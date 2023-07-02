import { StyleSheet, Text, View } from 'react-native'
import React from 'react'
import { COLORS } from '../../theme/colors'

const Item = () => {
    return (
        <View style={{ flexDirection: 'row', }}>
            <Text style={{ fontSize: 11, lineHeight: 17, fontWeight: "700", color: COLORS.gray }}>champ : </Text>
            <Text style={{ fontSize: 11, lineHeight: 17, color: COLORS.textTertiary }}>values</Text>
        </View>
    )
}

export default Item

const styles = StyleSheet.create({})