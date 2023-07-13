import { Dimensions, StyleSheet, Text, TouchableOpacity, View } from 'react-native'
import React from 'react'
import Item from './item'
import EditIcon from '../../assets/icons/edit.svg'
import DeleteIcon from '../../assets/icons/delete.svg'
import { COLORS } from '../../theme/colors'

const CardItem = () => {
    return (
        <TouchableOpacity activeOpacity={.7} style={styles.card}
            onPress={() => { }} >
            <View style={{ flexDirection: "row", justifyContent: "flex-end", }}>
                <TouchableOpacity activeOpacity={.7} style={{ marginHorizontal: 10, padding: 3, zIndex: 1 }}>
                    <EditIcon height={15} width={15} color={COLORS.primary} />
                </TouchableOpacity>
                <TouchableOpacity activeOpacity={.7} style={{ padding: 3, zIndex: 1 }}>
                    <DeleteIcon height={15} width={15} color={COLORS.red} />
                </TouchableOpacity>
            </View>
            <Item />
            <Item />
            <Item />
        </TouchableOpacity>
    )
}

export default CardItem

const styles = StyleSheet.create({
    card: {
        borderWidth: 1,
        backgroundColor: "#F5F8FD",
        borderColor: "#EAEAEA",
        marginBottom: 8,
        borderRadius: 11,
        padding: 8
    }
})