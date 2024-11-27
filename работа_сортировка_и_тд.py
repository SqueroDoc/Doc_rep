import numpy as np

mystery = np.array([ 12279., -26024.,  28745.,  np.nan,  31244.,  -2365.,  -6974.,
        -9212., np.nan, -17722.,  16132.,  25933.,  np.nan, -16431.,
        29810.], dtype=np.float32)

nans_index = np.isnan(mystery)
# print(nans_index)

n_nan = np.sum(np.isnan(mystery))
# print(n_nan)

mystery_new = np.copy(mystery)
mystery_new[np.isnan(mystery_new)] = 0
# print(mystery_new)

mystery_int = np.nan_to_num(mystery).astype(np.int32)
# print(mystery_int, mystery_int.dtype, sep= '\n')

array = np.sort(mystery)
# print(array)

table = array.reshape((5, 3), order='F')
# print(table)

col = table[:, 1]
# print(col)