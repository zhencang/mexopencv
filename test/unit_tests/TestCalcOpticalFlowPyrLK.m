classdef TestCalcOpticalFlowPyrLK
    %TestCalcOpticalFlowPyrLK
    properties (Constant)
    	im = im2uint8([...
            0 0 0 0 0 0 0 0 0 0;...
            0 0 0 0 0 0 0 0 0 0;...
            0 0 0 0 0 0 0 0 0 0;...
            0 0 0 1 1 1 0 0 0 0;...
            0 0 0 1 0 1 0 0 0 0;...
            0 0 0 1 1 1 0 0 0 0;...
            0 0 0 0 0 0 0 0 0 0;...
            0 0 0 0 0 0 0 0 0 0;...
            0 0 0 0 0 0 0 0 0 0;...
            0 0 0 0 0 0 0 0 0 0;...
            ]);
    end
    
    methods (Static)
        function test_1
        	im1 = TestCalcOpticalFlowPyrLK.im;
        	im2 = [zeros(10,1,'uint8'),im1(:,1:end-1)];
            pts = cv.calcOpticalFlowPyrLK(im1,im2,{[3,3]});
        end
        
        function test_error_1
            try
                cv.calcOpticalFlowPyrLK();
                throw('UnitTest:Fail');
            catch e
                assert(strcmp(e.identifier,'mexopencv:error'));
            end
        end
    end
    
end
