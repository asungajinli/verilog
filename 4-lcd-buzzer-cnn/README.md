# LCD, Buzzer, CNN

## LCD 표시 방법

## Buzzer 제어 방법

## CNN
1. 입력 영상 최소 크기: one-layer 6x6(8bit), 입력 영상은 Verilog 언어를 이용하여 파일로 미리 저장되어 있어야 한다. 

2. Kernals (filters): 3&times;3 4개 (다음)<br>

    <div style="display: flex; justify-content: space-between;">
        <div style="display:inline-block; float:left; margin-right:20px;">
            <table>
            <tbody style="text-align:center;">
                <tr>
                    <td>1</td>
                    <td>0</td>
                    <td>-1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>0</td>
                    <td>-1</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>0</td>
                    <td>-1</td>
                </tr>
                <tr>
                    <td colspan="3">Kernal 1</td>
                </tr>
            </tbody>
            </table>
        </div>
        <div style="display:inline-block; float:left; margin-right:20px;">
            <table>
            <tbody style="text-align:center;">
                <tr>
                    <td>1</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>0</td>
                    <td>0</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>-1</td>
                    <td>-1</td>
                    <td>-1</td>
                </tr>
                <tr>
                    <td colspan="3">Kernal 2</td>
                </tr>
            </tbody>
            </table>
        </div>
        <div style="display:inline-block; float:left; margin-right:20px;">
            <table>
            <tbody style="text-align:center;">
                <tr>
                    <td>0</td>
                    <td>0</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td>0</td>
                    <td>1</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>0</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td colspan="3">Kernal 3</td>
                </tr>
            </tbody>
            </table>
        </div>
        <div style="display:inline-block; margin-right:20px;">
            <table>
            <tbody style="text-align:center;">
                <tr>
                    <td>1/9</td>
                    <td>1/9</td>
                    <td>1/9</td>
                </tr>
                <tr>
                    <td>1/9</td>
                    <td>1/9</td>
                    <td>1/9</td>
                </tr>
                <tr>
                    <td>1/9</td>
                    <td>1/9</td>
                    <td>1/9</td>
                </tr>
                <tr>
                    <td colspan="3">Kernal 4</td>
                </tr>
            </tbody>
            </table>
        </div>
    </div>

3. Strides: 2가지 (1, 2)

4. Padding: 2가지 (non-padding, zero-padding)

5. Convolution output인 feature maps은 Verilog 언어를 이용하여 파일로 저장한다.

6. 결과를 검증하고 평가한다.

---
## Reference

1. https://github.com/AniketBadhan/Convolutional-Neural-Network