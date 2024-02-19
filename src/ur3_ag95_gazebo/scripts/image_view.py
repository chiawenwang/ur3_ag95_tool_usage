import cv2
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

# 初始化 ROS 节点和 CvBridge
rospy.init_node('image_processor')
bridge = CvBridge()

# 创建一个发布者，发布处理后的图像数据
processed_image_pub = rospy.Publisher('/processed_image', Image, queue_size=1)

def image_callback(msg):
    try:
        # 将ROS图像消息转换为OpenCV图像
        cv_image = bridge.imgmsg_to_cv2(msg, desired_encoding='passthrough')

        # 如果是单通道图像，将其转换为BGR格式
        # if len(cv_image.shape) == 2:
        #     cv_image = cv2.cvtColor(cv_image, cv2.COLOR_GRAY2BGR)

        # 在这里添加其他处理或显示图像的代码
        # 例如，进行图像处理操作，修改 cv_image

        # 将处理后的图像转换回ROS消息
        processed_image_msg = bridge.cv2_to_imgmsg(cv_image, encoding='bgr8')

        # 发布处理后的图像消息
        processed_image_pub.publish(processed_image_msg)

    except CvBridgeError as e:
        rospy.logerr(e)

# 订阅原始图像话题
rospy.Subscriber('/d435/infra2/image_raw', Image, image_callback)

# 进入ROS循环
rospy.spin()