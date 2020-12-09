#/bin/bash
set -e

nosetests -d -s cpc/unit_tests.py:TestDataLoader.testFindAllSeqs
nosetests -d -s cpc/unit_tests.py:TestDataLoader.testFindAllSeqsCustomSpeakers
nosetests -d -s cpc/unit_tests.py:TestDataLoader.testFindAllSeqs0Speakers
nosetests -d -s cpc/unit_tests.py:TestDataLoader.testFindAllSeqs0SpeakersForced
nosetests -d -s cpc/unit_tests.py:TestDataLoader.testLoadData
nosetests -d -s cpc/unit_tests.py:TestDataLoader.testDataLoader
nosetests -d -s cpc/unit_tests.py:TestDataLoader.testPartialLoader

nosetests -d -s cpc/unit_tests.py:TestPhonemParser.testSeqLoader
nosetests -d -s cpc/unit_tests.py:TestPhonemParser.testSeqLabels

nosetests -d -s cpc/unit_tests.py:TestLabelProcess.testLabelCollapse
nosetests -d -s cpc/unit_tests.py:TestLabelProcess.test_beam_search
nosetests -d -s cpc/unit_tests.py:TestLabelProcess.test_big_beam_search

nosetests -d -s cpc/unit_tests.py:TestEncoderBuilder.testBuildMFCCEncoder
nosetests -d -s cpc/unit_tests.py:TestEncoderBuilder.testBuildLFBEnconder
nosetests -d -s cpc/unit_tests.py:TestEncoderBuilder.testBuildCPCEncoder

nosetests -d -s cpc/unit_tests.py:TestARBuilder.testbuildNoAR
nosetests -d -s cpc/unit_tests.py:TestARBuilder.testbuildLSTM
nosetests -d -s cpc/unit_tests.py:TestARBuilder.testbuildGRU
nosetests -d -s cpc/unit_tests.py:TestARBuilder.testbuildRNN

nosetests -d -s cpc/utils/unit_tests.py:TestCombineSchedulers.testCombineRamp
nosetests -d -s cpc/utils/unit_tests.py:TestCombineSchedulers.testCombineRampStep

nosetests -d -s cpc/eval/ABX/unit_tests.py:TestDistancesDTW.testDTWFunction
nosetests -d -s cpc/eval/ABX/unit_tests.py:TestDistancesDTW.testThetaDTWFunctionSymetric

nosetests -d -s cpc/eval/ABX/unit_tests.py:testSingularityNormalization.testCosineNormalized

nosetests -d -s cpc/eval/ABX/unit_tests.py:testGroupMaker.test1DGroupMaker
nosetests -d -s cpc/eval/ABX/unit_tests.py:testGroupMaker.test2DGroupMaker
nosetests -d -s cpc/eval/ABX/unit_tests.py:testGroupMaker.test3DGroupMaker

nosetests -d -s cpc/eval/ABX/unit_tests.py:testItemLoader.testLoadItemFile
nosetests -d -s cpc/eval/ABX/unit_tests.py:testItemLoader.testLoadWithinItemFile

nosetests -d -s cpc/eval/ABX/unit_tests.py:testABXFeatureLoader.testBaseLoader
nosetests -d -s cpc/eval/ABX/unit_tests.py:testABXFeatureLoader.testWithinIterator
