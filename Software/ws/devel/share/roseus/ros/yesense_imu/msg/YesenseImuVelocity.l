;; Auto-generated. Do not edit!


(when (boundp 'yesense_imu::YesenseImuVelocity)
  (if (not (find-package "YESENSE_IMU"))
    (make-package "YESENSE_IMU"))
  (shadow 'YesenseImuVelocity (find-package "YESENSE_IMU")))
(unless (find-package "YESENSE_IMU::YESENSEIMUVELOCITY")
  (make-package "YESENSE_IMU::YESENSEIMUVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude YesenseImuVelocity.msg.html


(defclass yesense_imu::YesenseImuVelocity
  :super ros::object
  :slots (_v_e _v_n _v_u ))

(defmethod yesense_imu::YesenseImuVelocity
  (:init
   (&key
    ((:v_e __v_e) 0.0)
    ((:v_n __v_n) 0.0)
    ((:v_u __v_u) 0.0)
    )
   (send-super :init)
   (setq _v_e (float __v_e))
   (setq _v_n (float __v_n))
   (setq _v_u (float __v_u))
   self)
  (:v_e
   (&optional __v_e)
   (if __v_e (setq _v_e __v_e)) _v_e)
  (:v_n
   (&optional __v_n)
   (if __v_n (setq _v_n __v_n)) _v_n)
  (:v_u
   (&optional __v_u)
   (if __v_u (setq _v_u __v_u)) _v_u)
  (:serialization-length
   ()
   (+
    ;; float32 _v_e
    4
    ;; float32 _v_n
    4
    ;; float32 _v_u
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _v_e
       (sys::poke _v_e (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_n
       (sys::poke _v_n (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_u
       (sys::poke _v_u (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _v_e
     (setq _v_e (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_n
     (setq _v_n (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_u
     (setq _v_u (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yesense_imu::YesenseImuVelocity :md5sum-) "ee3bc63430d946c96d8af696d4656826")
(setf (get yesense_imu::YesenseImuVelocity :datatype-) "yesense_imu/YesenseImuVelocity")
(setf (get yesense_imu::YesenseImuVelocity :definition-)
      "float32 v_e
float32 v_n
float32 v_u

")



(provide :yesense_imu/YesenseImuVelocity "ee3bc63430d946c96d8af696d4656826")


