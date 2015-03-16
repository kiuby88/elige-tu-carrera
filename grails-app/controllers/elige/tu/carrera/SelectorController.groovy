package elige.tu.carrera

import grails.converters.JSON
import grails.transaction.Transactional
import grails.web.JSONBuilder
import smile.Network

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class SelectorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Selector.list(params), model: [selectorInstanceCount: Selector.count()]
    }

    def redHolder

    def calculate() {
        Network net = new Network()
        net.readFile(redHolder.red.file.absolutePath)

        JSONBuilder jSON = new JSONBuilder()
        JSON json = jSON.build {
            net.allNodeIds
        }

        ProfessionSummary summary = new ProfessionSummary();


        for (Map.Entry<String,String> param : getFilteredParams()) {
            //
            // net.setEvidence(param.key, param.value)
            render param.key + param.value
        }

        //render json.toString()
        //render getParams().entrySet()[0]
        render getFilteredParams()
    }

    private getFilteredParams(){
        Set<Map.Entry> tmp = getParams().entrySet()
        tmp = tmp.findAll{
            p -> !p.toString().startsWith("action") &&
                    !p.toString().startsWith("controller")
        }
        return tmp;
    }

    def show(Selector selectorInstance) {
        respond selectorInstance
    }

    def create() {
        respond new Selector(params)
    }

    @Transactional
    def save(Selector selectorInstance) {
        if (selectorInstance == null) {
            notFound()
            return
        }

        if (selectorInstance.hasErrors()) {
            respond selectorInstance.errors, view: 'create'
            return
        }

        selectorInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'selector.label', default: 'Selector'), selectorInstance.id])
                redirect selectorInstance
            }
            '*' { respond selectorInstance, [status: CREATED] }
        }
    }

    def edit(Selector selectorInstance) {
        respond selectorInstance
    }

    @Transactional
    def update(Selector selectorInstance) {
        if (selectorInstance == null) {
            notFound()
            return
        }

        if (selectorInstance.hasErrors()) {
            respond selectorInstance.errors, view: 'edit'
            return
        }

        selectorInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Selector.label', default: 'Selector'), selectorInstance.id])
                redirect selectorInstance
            }
            '*' { respond selectorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Selector selectorInstance) {

        if (selectorInstance == null) {
            notFound()
            return
        }

        selectorInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Selector.label', default: 'Selector'), selectorInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'selector.label', default: 'Selector'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
