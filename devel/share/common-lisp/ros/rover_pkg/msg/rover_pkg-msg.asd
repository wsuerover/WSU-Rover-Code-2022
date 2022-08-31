
(cl:in-package :asdf)

(defsystem "rover_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ArmData" :depends-on ("_package_ArmData"))
    (:file "_package_ArmData" :depends-on ("_package"))
    (:file "RockerBogieData" :depends-on ("_package_RockerBogieData"))
    (:file "_package_RockerBogieData" :depends-on ("_package"))
    (:file "ScienceData" :depends-on ("_package_ScienceData"))
    (:file "_package_ScienceData" :depends-on ("_package"))
    (:file "SensorData" :depends-on ("_package_SensorData"))
    (:file "_package_SensorData" :depends-on ("_package"))
    (:file "ToolData" :depends-on ("_package_ToolData"))
    (:file "_package_ToolData" :depends-on ("_package"))
    (:file "UserInput" :depends-on ("_package_UserInput"))
    (:file "_package_UserInput" :depends-on ("_package"))
  ))