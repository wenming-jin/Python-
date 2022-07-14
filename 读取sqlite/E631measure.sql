-- WB:0     PB:1    PD:2        SR:3    低值白细胞(LB):4
-- CBC:0    CD:1    CDRET:2     CBCRET:3    CDC:4   CDCS:5    CRP:6   CRPSAA:7  8:SAA, 9:RET
-- type     0:(CBC, CD), 1:(RET相关), 2:(CRP, SAA相关), 3:(CRP+SAA相关)
DELETE FROM measure_function;
INSERT INTO measure_function (sample_mode, test_mode, pool_index, seq_no, type, desc) VALUES
(0, 0, 0, 0x001, 0, '全血CBC测量时序'               ),
(0, 1, 0, 0x002, 0, '全血CBC+DIFF测量时序'          ),
(0, 2, 0, 0x003, 1, '全血CBC+DIFF+RET测量时序'      ),
(0, 3, 0, 0x004, 1, '全血CBC+RET测量时序'           ),
(0, 4, 1, 0x005, 2, '全血CBC+DIFF+CRP测量时序1'     ),
(0, 4, 2, 0x006, 2, '全血CBC+DIFF+CRP测量时序2'     ),
(0, 5, 1, 0x007, 3, '全血CBC+DIFF+CRP+SAA测量时序1' ),
(0, 5, 2, 0x008, 3, '全血CBC+DIFF+CRP+SAA测量时序2' ),
(0, 6, 1, 0x009, 2, '全血CRP测量时序1'              ),
(0, 6, 2, 0x00A, 2, '全血CRP测量时序2'              ),
(0, 7, 1, 0x00B, 3, '全血CRP+SAA测量时序1'          ),
(0, 7, 2, 0x00C, 3, '全血CRP+SAA测量时序2'          ),

(1, 0, 0, 0x00D, 0, '末梢血CBC测量时序'              ),
(1, 1, 0, 0x00E, 0, '末梢血CBC+DIFF测量时序'         ),
(1, 2, 0, 0x00F, 1, '末梢血CBC+DIFF+RET测量时序'     ),
(1, 3, 0, 0x010, 1, '末梢血CBC+RET测量时序'          ),
(1, 4, 1, 0x011, 2, '末梢血CBC+DIFF+CRP测量时序1'    ),
(1, 4, 2, 0x012, 2, '末梢血CBC+DIFF+CRP测量时序2'    ),
(1, 5, 1, 0x013, 3, '末梢血CBC+DIFF+CRP+SAA测量时序1'),
(1, 5, 2, 0x014, 3, '末梢血CBC+DIFF+CRP+SAA测量时序2'),
(1, 6, 1, 0x015, 2, '末梢血CRP测量时序1'             ),
(1, 6, 2, 0x016, 2, '末梢血CRP测量时序2'             ),
(1, 7, 1, 0x017, 3, '末梢血CRP+SAA测量时序1'         ),
(1, 7, 2, 0x018, 3, '末梢血CRP+SAA测量时序2'         ),

(2, 0, 0, 0x019, 0, '预稀释CBC测量时序'              ),
(2, 1, 0, 0x01A, 0, '预稀释CBC+DIFF测量时序'         ),
(2, 2, 0, 0x01B, 1, '预稀释CBC+DIFF+RET测量时序'     ),
(2, 3, 0, 0x01C, 1, '预稀释CBC+RET测量时序'          ),
(2, 4, 1, 0x01D, 2, '预稀释CBC+DIFF+CRP测量时序1'    ),
(2, 4, 2, 0x01E, 2, '预稀释CBC+DIFF+CRP测量时序2'    ),
(2, 5, 1, 0x01F, 3, '预稀释CBC+DIFF+CRP+SAA测量时序1'),
(2, 5, 2, 0x020, 3, '预稀释CBC+DIFF+CRP+SAA测量时序2'),
(2, 6, 1, 0x021, 2, '预稀释CRP测量时序1'             ),
(2, 6, 2, 0x022, 2, '预稀释CRP测量时序2'             ),
(2, 7, 1, 0x023, 3, '预稀释CRP+SAA测量时序1'         ),
(2, 7, 2, 0x024, 3, '预稀释CRP+SAA测量时序2'         ),

(0, 4, 3, 0x02D, 2, '全血CBC+DIFF+CRP测量时序3'     ),
(0, 4, 4, 0x02E, 2, '全血CBC+DIFF+CRP测量时序4'     ),

(3, 6, 1, 0x02F, 2, '血清CRP测量1号时序'             ),
(3, 6, 2, 0x030, 2, '血清CRP测量2号时序'             ),
(3, 6, 3, 0x031, 2, '血清CRP测量3号时序'             ),
(3, 6, 4, 0x032, 2, '血清CRP测量4号时序'             ),
(3, 8, 1, 0x033, 2, '血清SAA测量1号时序'             ),
(3, 8, 2, 0x034, 2, '血清SAA测量2号时序'             ),
(3, 8, 3, 0x035, 2, '血清SAA测量3号时序'             ),
(3, 8, 4, 0x036, 2, '血清SAA测量4号时序'             ),

(0, 6, 3, 0x037, 2, '全血CRP测量时序3'              ),
(0, 6, 4, 0x038, 2, '全血CRP测量时序4'              ),

(4, 1, 0, 0x039, 0, '低值白细胞CBC+DIFF测量时序'       ),
(4, 2, 0, 0x03A, 1, '低值白细胞CBC+DIFF+RET测量时序'   ),
(4, 4, 1, 0x03B, 2, '低值白细胞CBC+DIFF+CRP测量时序1'  ),
(4, 4, 2, 0x03C, 2, '低值白细胞CBC+DIFF+CRP测量时序2'  ),
(4, 4, 3, 0x03D, 2, '低值白细胞CBC+DIFF+CRP测量时序3'  ),
(4, 4, 4, 0x03E, 2, '低值白细胞CBC+DIFF+CRP测量时序4'  ),
(4, 5, 1, 0x03F, 3, '低值白细胞CBC+DIFF+CRP+SAA测量时序1'),
(4, 5, 2, 0x040, 3, '低值白细胞CBC+DIFF+CRP+SAA测量时序2'),

(0, 9, 0, 0x085, 1, '全血RET测量时序'               ),

(1, 9, 0, 0x086, 1, '末梢血RET测量时序'              ),
(1, 4, 3, 0x087, 2, '末梢血CBC+DIFF+CRP测量时序3'    ),
(1, 4, 4, 0x088, 2, '末梢血CBC+DIFF+CRP测量时序4'    ),
(1, 6, 3, 0x089, 2, '末梢血CRP测量时序3'             ),
(1, 6, 4, 0x08A, 2, '末梢血CRP测量时序4'             ),

(2, 4, 3, 0x08B, 2, '预稀释CBC+DIFF+CRP测量时序3'    ),
(2, 4, 4, 0x08C, 2, '预稀释CBC+DIFF+CRP测量时序4'    ),
(2, 6, 3, 0x08D, 2, '预稀释CRP测量时序3'             ),
(2, 6, 4, 0x08E, 2, '预稀释CRP测量时序4'             ),
