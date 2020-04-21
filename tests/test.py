from unittest import TestCase, main
from projectname import ProjectName

class TestGenerate(TestCase):
    def setUp(self):
        self.projectname = ProjectName()

    def test_add(self):
        self.assertEqual(4, self.projectname.adder(2,2))
        self.assertEqual(1, self.projectname.adder(-1,2))

if __name__ == '__main__':
    main()
