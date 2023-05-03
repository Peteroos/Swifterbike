;; Auto-generated. Do not edit!


(when (boundp 'yesense_imu::YesenseImuInertialData)
  (if (not (find-package "YESENSE_IMU"))
    (make-package "YESENSE_IMU"))
  (shadow 'YesenseImuInertialData (find-package "YESENSE_IMU")))
(unless (find-package "YESENSE_IMU::YESENSEIMUINERTIALDATA")
  (make-package "YESENSE_IMU::YESENSEIMUINERTIALDATA"))

(in-package "ROS")
;;//! \htmlinclude YesenseImuInertialData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass yesense_imu::YesenseImuInertialData
  :super ros::object
  :slots (_tid _temperature _sample_timestamp _sync_timestamp _accel _quaternion _eulerAngle ))

(defmethod yesense_imu::YesenseImuInertialData
  (:init
   (&key
    ((:tid __tid) 0)
    ((:temperature __temperature) 0.0)
    ((:sample_timestamp __sample_timestamp) 0)
    ((:sync_timestamp __sync_timestamp) 0)
    ((:accel __accel) (instance geometry_msgs::Accel :init))
    ((:quaternion __quaternion) (instance yesense_imu::YesenseImuQuaternion :init))
    ((:eulerAngle __eulerAngle) (instance yesense_imu::YesenseImuEulerAngle :init))
    )
   (send-super :init)
   (setq _tid (round __tid))
   (setq _temperature (float __temperature))
   (setq _sample_timestamp (round __sample_timestamp))
   (setq _sync_timestamp (round __sync_timestamp))
   (setq _accel __accel)
   (setq _quaternion __quaternion)
   (setq _eulerAngle __eulerAngle)
   self)
  (:tid
   (&optional __tid)
   (if __tid (setq _tid __tid)) _tid)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:sample_timestamp
   (&optional __sample_timestamp)
   (if __sample_timestamp (setq _sample_timestamp __sample_timestamp)) _sample_timestamp)
  (:sync_timestamp
   (&optional __sync_timestamp)
   (if __sync_timestamp (setq _sync_timestamp __sync_timestamp)) _sync_timestamp)
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:quaternion
   (&rest __quaternion)
   (if (keywordp (car __quaternion))
       (send* _quaternion __quaternion)
     (progn
       (if __quaternion (setq _quaternion (car __quaternion)))
       _quaternion)))
  (:eulerAngle
   (&rest __eulerAngle)
   (if (keywordp (car __eulerAngle))
       (send* _eulerAngle __eulerAngle)
     (progn
       (if __eulerAngle (setq _eulerAngle (car __eulerAngle)))
       _eulerAngle)))
  (:serialization-length
   ()
   (+
    ;; uint16 _tid
    2
    ;; float32 _temperature
    4
    ;; uint32 _sample_timestamp
    4
    ;; uint32 _sync_timestamp
    4
    ;; geometry_msgs/Accel _accel
    (send _accel :serialization-length)
    ;; yesense_imu/YesenseImuQuaternion _quaternion
    (send _quaternion :serialization-length)
    ;; yesense_imu/YesenseImuEulerAngle _eulerAngle
    (send _eulerAngle :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _tid
       (write-word _tid s)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _sample_timestamp
       (write-long _sample_timestamp s)
     ;; uint32 _sync_timestamp
       (write-long _sync_timestamp s)
     ;; geometry_msgs/Accel _accel
       (send _accel :serialize s)
     ;; yesense_imu/YesenseImuQuaternion _quaternion
       (send _quaternion :serialize s)
     ;; yesense_imu/YesenseImuEulerAngle _eulerAngle
       (send _eulerAngle :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _tid
     (setq _tid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _sample_timestamp
     (setq _sample_timestamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sync_timestamp
     (setq _sync_timestamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Accel _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;; yesense_imu/YesenseImuQuaternion _quaternion
     (send _quaternion :deserialize buf ptr-) (incf ptr- (send _quaternion :serialization-length))
   ;; yesense_imu/YesenseImuEulerAngle _eulerAngle
     (send _eulerAngle :deserialize buf ptr-) (incf ptr- (send _eulerAngle :serialization-length))
   ;;
   self)
  )

(setf (get yesense_imu::YesenseImuInertialData :md5sum-) "49301d569caf56b15c2f0613bc663a74")
(setf (get yesense_imu::YesenseImuInertialData :datatype-) "yesense_imu/YesenseImuInertialData")
(setf (get yesense_imu::YesenseImuInertialData :definition-)
      "uint16                              tid
float32                             temperature
uint32                              sample_timestamp
uint32                              sync_timestamp
geometry_msgs/Accel                 accel
yesense_imu/YesenseImuQuaternion    quaternion
yesense_imu/YesenseImuEulerAngle    eulerAngle
================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: yesense_imu/YesenseImuQuaternion
float32 q0
float32 q1
float32 q2
float32 q3

================================================================================
MSG: yesense_imu/YesenseImuEulerAngle
float32 roll
float32 pitch
float32 yaw

")



(provide :yesense_imu/YesenseImuInertialData "49301d569caf56b15c2f0613bc663a74")


