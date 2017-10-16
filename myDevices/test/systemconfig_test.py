import unittest
from myDevices.system.systemconfig import SystemConfig
from myDevices.utils.logger import setInfo, info


class SystemConfigTest(unittest.TestCase):
    def testSystemConfig(self):
        config = SystemConfig.getConfig()
        if config:
            for item in ('DeviceTree', 'Serial', 'I2C', 'SPI'):
                self.assertIn(item, config)

        
if __name__ == '__main__':
    setInfo()
    unittest.main()