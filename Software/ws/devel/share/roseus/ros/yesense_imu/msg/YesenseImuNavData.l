;; Auto-generated. Do not edit!


(when (boundp 'yesense_imu::YesenseImuNavData)
  (if (not (find-package "YESENSE_IMU"))
    (make-package "YESENSE_IMU"))
  (shadow 'YesenseImuNavData (find-package "YESENSE_IMU")))
(unless (find-package "YESENSE_IMU::YESENSEIMUNAVDATA")
  (make-package "YESENSE_IMU::YESENSEIMUNAVDATA"))

(in-package "ROS")
;;//! \htmlinclude YesenseImuNavData.msg.html


(defclass yesense_imu::YesenseImuNavData
  :super ros::object
  :slots (_tid _location _utc_time _status ))

(defmethod yesense_imu::YesenseImuNavData
  (:init
   (&key
    ((:tid __tid) 0)
    ((:location __location) (instance yesense_imu::YesenseImuLocation :init))
    ((:utc_time __utc_time) (instance yesense_imu::YesenseImuUtcTime :init))
    ((:status __status) (instance yesense_imu::YesenseImuStatus :init))
    )
   (send-super :init)
   (setq _tid (round __tid))
   (setq _location __location)
   (setq _utc_time __utc_time)
   (setq _status __status)
   self)
  (:tid
   (&optional __tid)
   (if __tid (setq _tid __tid)) _tid)
  (:location
   (&rest __location)
   (if (keywordp (car __location))
       (send* _location __location)
     (progn
       (if __location (setq _location (car __location)))
       _location)))
  (:utc_time
   (&rest __utc_time)
   (if (keywordp (car __utc_time))
       (send* _utc_time __utc_time)
     (progn
       (if __utc_time (setq _utc_time (car __utc_time)))
       _utc_time)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; uint16 _tid
    2
    ;; yesense_imu/YesenseImuLocation _location
    (send _location :serialization-length)
    ;; yesense_imu/YesenseImuUtcTime _utc_time
    (send _utc_time :serialization-length)
    ;; yesense_imu/YesenseImuStatus _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _tid
       (write-word _tid s)
     ;; yesense_imu/YesenseImuLocation _location
       (send _location :serialize s)
     ;; yesense_imu/YesenseImuUtcTime _utc_time
       (send _utc_time :serialize s)
     ;; yesense_imu/YesenseImuStatus _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _tid
     (setq _tid (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; yesense_imu/YesenseImuLocation _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;; yesense_imu/YesenseImuUtcTime _utc_time
     (send _utc_time :deserialize buf ptr-) (incf ptr- (send _utc_time :serialization-length))
   ;; yesense_imu/YesenseImuStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get yesense_imu::YesenseImuNavData :md5sum-) "4aa52ebf06cd4d0bdd17a2cc70d2b2cf")
(setf (get yesense_imu::YesenseImuNavData :datatype-) "yesense_imu/YesenseImuNavData")
(setf (get yesense_imu::YesenseImuNavData :definition-)
      "uint16                          tid
yesense_imu/YesenseImuLocation  location
yesense_imu/YesenseImuUtcTime   utc_time
yesense_imu/YesenseImuStatus    status
================================================================================
MSG: yesense_imu/YesenseImuLocation
float64 longtidue
float64 latitude
float32 altidue
================================================================================
MSG: yesense_imu/YesenseImuUtcTime
uint16 year
uint8 month
uint8 date
uint8 hour
uint8 min
uint8 sec
uint32 ms
================================================================================
MSG: yesense_imu/YesenseImuStatus
uint8 fusion_status
uint8 gnss_status
")



(provide :yesense_imu/YesenseImuNavData "4aa52ebf06cd4d0bdd17a2cc70d2b2cf")


