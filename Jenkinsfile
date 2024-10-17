//Checkout
//Build
//Deploy

node("terraform"){
    stage("checkout"){
        checkout scm
        //echo "${params.branchName}"
    }
    stage("init"){
        sh """terraform init
            -backend-config="bucket=my-tf-test-bucket-miguel-munoz" \
            -backend-config="key=terraform/states/terraform.tfstate" \
            -backend-config="region=us-east-1"
        """
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