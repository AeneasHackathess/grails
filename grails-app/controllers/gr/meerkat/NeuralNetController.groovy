package gr.meerkat

class NeuralNetController {

    def index() {

    }
    def train(){
        def command = "./wekaScript "+params.learningR+" "+params.momentum+" "+params.trainingTime+" "+params.hiddenLayers// Create the String
        def proc = command.execute()                 // Call *execute* on the string
        proc.waitFor()                               // Wait for the command to finish

// Obtain status and output
//        println "return code: ${ proc.exitValue()}"
//        println "stderr: ${proc.err.text}"
//        println "stdout: ${proc.in.text}" // *out* from the external program is *in* for groovy
        render(file: "./webapps/images/out.txt",contentType: "text")
    }
    def test(){

    }
}
