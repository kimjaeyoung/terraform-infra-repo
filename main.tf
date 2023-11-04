module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "kjy-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-08ba4d88f7207bd3f"

  private_subnets = ["subnet-00dcc44ebbf7fc2b6", "subnet-0cecfca220146e0da"]
  public_subnets  = ["subnet-08ed55b18a226d9c4", "subnet-0dad51866ab0e7904"]
}