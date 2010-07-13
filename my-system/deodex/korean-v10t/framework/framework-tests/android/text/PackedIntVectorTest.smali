.class public Landroid/text/PackedIntVectorTest;
.super Ljunit/framework/TestCase;
.source "PackedIntVectorTest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public testBasic()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 28
    const/4 v9, 0x0

    .local v9, width:I
    :goto_2
    const/16 v10, 0xa

    if-ge v9, v10, :cond_166

    .line 29
    new-instance v8, Landroid/text/PackedIntVector;

    invoke-direct {v8, v9}, Landroid/text/PackedIntVector;-><init>(I)V

    .line 30
    .local v8, p:Landroid/text/PackedIntVector;
    new-array v5, v9, [I

    .line 32
    .local v5, ins:[I
    mul-int/lit8 v3, v9, 0x2

    .local v3, height:I
    :goto_f
    mul-int/lit8 v10, v9, 0x4

    if-ge v3, v10, :cond_162

    .line 33
    invoke-virtual {v8}, Landroid/text/PackedIntVector;->width()I

    move-result v10

    invoke-static {v10, v9}, Landroid/text/PackedIntVectorTest;->assertEquals(II)V

    .line 37
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1b
    if-ge v4, v3, :cond_66

    .line 40
    rem-int/lit8 v10, v4, 0x2

    if-nez v10, :cond_2c

    .line 41
    move v0, v4

    .line 46
    .local v0, at:I
    :goto_22
    const/4 v6, 0x0

    .local v6, j:I
    :goto_23
    if-ge v6, v9, :cond_33

    .line 47
    add-int v10, v4, v6

    aput v10, v5, v6

    .line 46
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 43
    .end local v0           #at:I
    .end local v6           #j:I
    :cond_2c
    invoke-virtual {v8}, Landroid/text/PackedIntVector;->size()I

    move-result v10

    sub-int v0, v10, v4

    .restart local v0       #at:I
    goto :goto_22

    .line 50
    .restart local v6       #j:I
    :cond_33
    div-int/lit8 v10, v3, 0x2

    if-ne v4, v10, :cond_55

    .line 51
    const/4 v10, 0x0

    invoke-virtual {v8, v0, v10}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 56
    :goto_3b
    invoke-virtual {v8}, Landroid/text/PackedIntVector;->size()I

    move-result v10

    add-int/lit8 v11, v4, 0x1

    invoke-static {v10, v11}, Landroid/text/PackedIntVectorTest;->assertEquals(II)V

    .line 58
    const/4 v6, 0x0

    :goto_45
    if-ge v6, v9, :cond_63

    .line 59
    div-int/lit8 v10, v3, 0x2

    if-ne v4, v10, :cond_59

    .line 60
    invoke-virtual {v8, v0, v6}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v10

    invoke-static {v13, v10}, Landroid/text/PackedIntVectorTest;->assertEquals(II)V

    .line 58
    :goto_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 53
    :cond_55
    invoke-virtual {v8, v0, v5}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    goto :goto_3b

    .line 62
    :cond_59
    invoke-virtual {v8, v0, v6}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v10

    add-int v11, v4, v6

    invoke-static {v10, v11}, Landroid/text/PackedIntVectorTest;->assertEquals(II)V

    goto :goto_52

    .line 37
    :cond_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 69
    .end local v0           #at:I
    .end local v6           #j:I
    :cond_66
    const/4 v4, 0x0

    :goto_67
    if-ge v4, v3, :cond_80

    .line 70
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_6a
    if-ge v6, v9, :cond_7d

    .line 71
    mul-int v10, v4, v6

    invoke-virtual {v8, v4, v6, v10}, Landroid/text/PackedIntVector;->setValue(III)V

    .line 73
    invoke-virtual {v8, v4, v6}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v10

    mul-int v11, v4, v6

    invoke-static {v10, v11}, Landroid/text/PackedIntVectorTest;->assertEquals(II)V

    .line 70
    add-int/lit8 v6, v6, 0x1

    goto :goto_6a

    .line 69
    :cond_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 79
    .end local v6           #j:I
    :cond_80
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_81
    if-ge v6, v9, :cond_8d

    .line 80
    mul-int/lit8 v10, v6, 0x2

    add-int/lit8 v11, v6, 0x1b

    invoke-virtual {v8, v10, v6, v11}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 79
    add-int/lit8 v6, v6, 0x1

    goto :goto_81

    .line 83
    :cond_8d
    const/4 v4, 0x0

    :goto_8e
    if-ge v4, v3, :cond_a9

    .line 84
    const/4 v6, 0x0

    :goto_91
    if-ge v6, v9, :cond_a6

    .line 85
    mul-int v2, v4, v6

    .line 87
    .local v2, expect:I
    mul-int/lit8 v10, v6, 0x2

    if-lt v4, v10, :cond_9c

    .line 88
    add-int/lit8 v10, v6, 0x1b

    add-int/2addr v2, v10

    .line 91
    :cond_9c
    invoke-virtual {v8, v4, v6}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v10

    invoke-static {v10, v2}, Landroid/text/PackedIntVectorTest;->assertEquals(II)V

    .line 84
    add-int/lit8 v6, v6, 0x1

    goto :goto_91

    .line 83
    .end local v2           #expect:I
    :cond_a6
    add-int/lit8 v4, v4, 0x1

    goto :goto_8e

    .line 95
    :cond_a9
    const/4 v6, 0x0

    :goto_aa
    if-ge v6, v9, :cond_b6

    .line 96
    mul-int v10, v6, v6

    add-int/lit8 v10, v10, 0xe

    invoke-virtual {v8, v6, v6, v10}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 95
    add-int/lit8 v6, v6, 0x1

    goto :goto_aa

    .line 99
    :cond_b6
    const/4 v4, 0x0

    :goto_b7
    if-ge v4, v3, :cond_d9

    .line 100
    const/4 v6, 0x0

    :goto_ba
    if-ge v6, v9, :cond_d6

    .line 101
    mul-int v2, v4, v6

    .line 103
    .restart local v2       #expect:I
    mul-int/lit8 v10, v6, 0x2

    if-lt v4, v10, :cond_c5

    .line 104
    add-int/lit8 v10, v6, 0x1b

    add-int/2addr v2, v10

    .line 106
    :cond_c5
    if-lt v4, v6, :cond_cc

    .line 107
    mul-int v10, v6, v6

    add-int/lit8 v10, v10, 0xe

    add-int/2addr v2, v10

    .line 110
    :cond_cc
    invoke-virtual {v8, v4, v6}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v10

    invoke-static {v10, v2}, Landroid/text/PackedIntVectorTest;->assertEquals(II)V

    .line 100
    add-int/lit8 v6, v6, 0x1

    goto :goto_ba

    .line 99
    .end local v2           #expect:I
    :cond_d6
    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    .line 116
    :cond_d9
    const/4 v6, 0x0

    :goto_da
    if-ge v6, v9, :cond_ef

    .line 117
    mul-int/lit8 v10, v6, 0x2

    add-int/lit8 v11, v6, 0x1b

    neg-int v11, v11

    invoke-virtual {v8, v10, v6, v11}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 118
    mul-int v10, v6, v6

    add-int/lit8 v10, v10, 0xe

    neg-int v10, v10

    invoke-virtual {v8, v6, v6, v10}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 116
    add-int/lit8 v6, v6, 0x1

    goto :goto_da

    .line 121
    :cond_ef
    const/4 v4, 0x0

    :goto_f0
    if-ge v4, v3, :cond_104

    .line 122
    const/4 v6, 0x0

    :goto_f3
    if-ge v6, v9, :cond_101

    .line 123
    invoke-virtual {v8, v4, v6}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v10

    mul-int v11, v4, v6

    invoke-static {v10, v11}, Landroid/text/PackedIntVectorTest;->assertEquals(II)V

    .line 122
    add-int/lit8 v6, v6, 0x1

    goto :goto_f3

    .line 121
    :cond_101
    add-int/lit8 v4, v4, 0x1

    goto :goto_f0

    .line 129
    :cond_104
    invoke-virtual {v8}, Landroid/text/PackedIntVector;->size()I

    move-result v10

    if-lez v10, :cond_157

    .line 130
    invoke-virtual {v8}, Landroid/text/PackedIntVector;->size()I

    move-result v7

    .line 131
    .local v7, osize:I
    div-int/lit8 v1, v7, 0x3

    .line 133
    .local v1, del:I
    if-nez v1, :cond_113

    .line 134
    const/4 v1, 0x1

    .line 137
    :cond_113
    sub-int v10, v7, v1

    div-int/lit8 v0, v10, 0x2

    .line 138
    .restart local v0       #at:I
    invoke-virtual {v8, v0, v1}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 140
    invoke-virtual {v8}, Landroid/text/PackedIntVector;->size()I

    move-result v10

    sub-int v11, v7, v1

    invoke-static {v10, v11}, Landroid/text/PackedIntVectorTest;->assertEquals(II)V

    .line 142
    const/4 v4, 0x0

    :goto_124
    if-ge v4, v0, :cond_138

    .line 143
    const/4 v6, 0x0

    :goto_127
    if-ge v6, v9, :cond_135

    .line 144
    invoke-virtual {v8, v4, v6}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v10

    mul-int v11, v4, v6

    invoke-static {v10, v11}, Landroid/text/PackedIntVectorTest;->assertEquals(II)V

    .line 143
    add-int/lit8 v6, v6, 0x1

    goto :goto_127

    .line 142
    :cond_135
    add-int/lit8 v4, v4, 0x1

    goto :goto_124

    .line 148
    :cond_138
    move v4, v0

    :goto_139
    invoke-virtual {v8}, Landroid/text/PackedIntVector;->size()I

    move-result v10

    if-ge v4, v10, :cond_104

    .line 149
    const/4 v6, 0x0

    :goto_140
    if-ge v6, v9, :cond_154

    .line 150
    invoke-virtual {v8, v4, v6}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v10

    add-int v11, v4, v3

    invoke-virtual {v8}, Landroid/text/PackedIntVector;->size()I

    move-result v12

    sub-int/2addr v11, v12

    mul-int/2addr v11, v6

    invoke-static {v10, v11}, Landroid/text/PackedIntVectorTest;->assertEquals(II)V

    .line 149
    add-int/lit8 v6, v6, 0x1

    goto :goto_140

    .line 148
    :cond_154
    add-int/lit8 v4, v4, 0x1

    goto :goto_139

    .line 155
    .end local v0           #at:I
    .end local v1           #del:I
    .end local v7           #osize:I
    :cond_157
    invoke-virtual {v8}, Landroid/text/PackedIntVector;->size()I

    move-result v10

    invoke-static {v13, v10}, Landroid/text/PackedIntVectorTest;->assertEquals(II)V

    .line 32
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_f

    .line 28
    .end local v4           #i:I
    .end local v6           #j:I
    :cond_162
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 158
    .end local v3           #height:I
    .end local v5           #ins:[I
    .end local v8           #p:Landroid/text/PackedIntVector;
    :cond_166
    return-void
.end method
