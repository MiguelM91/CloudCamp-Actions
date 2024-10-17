//Checkout
//Build
//Deploy

node("terraform"){
    stage("checkout"){
        checkout scm
    }
    stage("init"){
        sh "terraform init"
    }
    stage("validate"){
        sh """terraform validate
        terraform fmt"""
    }
    stage("plan"){
        //TODO:Auth with AWS
        sh "terraform plan"
    }

}