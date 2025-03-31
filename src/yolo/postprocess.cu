
#define CudaGlobal __global__
#define CudaDevice __device__
#define CudaHost __host__

__device__ float box_iou()
{
}

__global__ void nms_kernel(float *bboxes, int num_bboxes, float thr)
{
    int tid = blockDim.x * blockIdx.x + threadIdx.x;
    int count = bboxes[0];
    if (tid >= count)
        return;
}

__global__ void yolo_decode_kernel(float* predict,int num_bboxes,float conf,float* parray,int max_objects)
{
    int tid=blockDim.x*blockIdx.x+threadIdx.x;
    int count=predict[0];
    if(tid>=count)
        return;

    float* pitem=predict+1+tid*(/sizeof(float));
}