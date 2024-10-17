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
        sh "terraform plan"
    }

}