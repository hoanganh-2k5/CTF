.class Lcom/google/android/material/datepicker/MaterialCalendar$5;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialCalendar;->createItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final endItem:Ljava/util/Calendar;

.field private final startItem:Ljava/util/Calendar;

.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 267
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar$5;, "Lcom/google/android/material/datepicker/MaterialCalendar$5;"
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 269
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->startItem:Ljava/util/Calendar;

    .line 270
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->endItem:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 275
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar$5;, "Lcom/google/android/material/datepicker/MaterialCalendar$5;"
    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/material/datepicker/YearGridAdapter;

    if-eqz v1, :cond_8

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 279
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/YearGridAdapter;

    .line 280
    .local v1, "adapter":Lcom/google/android/material/datepicker/YearGridAdapter;
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 282
    .local v2, "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    iget-object v3, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v3}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$200(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/DateSelector;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/util/Pair;

    .line 283
    .local v4, "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v5, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_6

    iget-object v5, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 284
    goto :goto_0

    .line 286
    :cond_1
    iget-object v5, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->startItem:Ljava/util/Calendar;

    iget-object v6, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 287
    iget-object v5, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->endItem:Ljava/util/Calendar;

    iget-object v6, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 289
    iget-object v5, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->startItem:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/YearGridAdapter;->getPositionForYear(I)I

    move-result v5

    .line 290
    .local v5, "firstHighlightPosition":I
    iget-object v7, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->endItem:Ljava/util/Calendar;

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/android/material/datepicker/YearGridAdapter;->getPositionForYear(I)I

    move-result v6

    .line 291
    .local v6, "lastHighlightPosition":I
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    .line 292
    .local v7, "firstView":Landroid/view/View;
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v8

    .line 294
    .local v8, "lastView":Landroid/view/View;
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v9

    div-int v9, v5, v9

    .line 295
    .local v9, "firstRow":I
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v10

    div-int v10, v6, v10

    .line 297
    .local v10, "lastRow":I
    move v11, v9

    .local v11, "row":I
    :goto_1
    if-gt v11, v10, :cond_5

    .line 298
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v12

    mul-int/2addr v12, v11

    .line 299
    .local v12, "firstPositionInRow":I
    invoke-virtual {v2, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v13

    .line 300
    .local v13, "viewInRow":Landroid/view/View;
    if-nez v13, :cond_2

    .line 301
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto/16 :goto_4

    .line 303
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    iget-object v15, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v15}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;

    move-result-object v15

    iget-object v15, v15, Lcom/google/android/material/datepicker/CalendarStyle;->year:Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-virtual {v15}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getTopInset()I

    move-result v15

    add-int/2addr v14, v15

    .line 304
    .local v14, "top":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    move-object/from16 v16, v1

    .end local v1    # "adapter":Lcom/google/android/material/datepicker/YearGridAdapter;
    .local v16, "adapter":Lcom/google/android/material/datepicker/YearGridAdapter;
    iget-object v1, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarStyle;->year:Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getBottomInset()I

    move-result v1

    sub-int/2addr v15, v1

    .line 306
    .local v15, "bottom":I
    if-ne v11, v9, :cond_3

    if-eqz v7, :cond_3

    .line 307
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    add-int v1, v1, v17

    goto :goto_2

    .line 308
    :cond_3
    const/4 v1, 0x0

    :goto_2
    nop

    .line 310
    .local v1, "left":I
    if-ne v11, v10, :cond_4

    if-eqz v8, :cond_4

    .line 311
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v17

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    goto :goto_3

    .line 312
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v17

    :goto_3
    move/from16 v18, v17

    .line 313
    .local v18, "right":I
    move-object/from16 v17, v2

    .end local v2    # "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    .local v17, "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    int-to-float v2, v1

    move/from16 v25, v1

    .end local v1    # "left":I
    .local v25, "left":I
    int-to-float v1, v14

    move/from16 v21, v1

    move/from16 v20, v2

    move/from16 v1, v18

    .end local v18    # "right":I
    .local v1, "right":I
    int-to-float v2, v1

    .end local v1    # "right":I
    .restart local v18    # "right":I
    int-to-float v1, v15

    move/from16 v23, v1

    iget-object v1, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move-object/from16 v24, v1

    move/from16 v22, v2

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 297
    .end local v12    # "firstPositionInRow":I
    .end local v13    # "viewInRow":Landroid/view/View;
    .end local v14    # "top":I
    .end local v15    # "bottom":I
    .end local v18    # "right":I
    .end local v25    # "left":I
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_1

    .end local v16    # "adapter":Lcom/google/android/material/datepicker/YearGridAdapter;
    .end local v17    # "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    .local v1, "adapter":Lcom/google/android/material/datepicker/YearGridAdapter;
    .restart local v2    # "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    :cond_5
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 315
    .end local v1    # "adapter":Lcom/google/android/material/datepicker/YearGridAdapter;
    .end local v2    # "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    .end local v4    # "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v5    # "firstHighlightPosition":I
    .end local v6    # "lastHighlightPosition":I
    .end local v7    # "firstView":Landroid/view/View;
    .end local v8    # "lastView":Landroid/view/View;
    .end local v9    # "firstRow":I
    .end local v10    # "lastRow":I
    .end local v11    # "row":I
    .restart local v16    # "adapter":Lcom/google/android/material/datepicker/YearGridAdapter;
    .restart local v17    # "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    goto/16 :goto_0

    .line 283
    .end local v16    # "adapter":Lcom/google/android/material/datepicker/YearGridAdapter;
    .end local v17    # "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    .restart local v1    # "adapter":Lcom/google/android/material/datepicker/YearGridAdapter;
    .restart local v2    # "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    .restart local v4    # "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_6
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "adapter":Lcom/google/android/material/datepicker/YearGridAdapter;
    .end local v2    # "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    .restart local v16    # "adapter":Lcom/google/android/material/datepicker/YearGridAdapter;
    .restart local v17    # "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    goto/16 :goto_0

    .line 316
    .end local v4    # "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v16    # "adapter":Lcom/google/android/material/datepicker/YearGridAdapter;
    .end local v17    # "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    .restart local v1    # "adapter":Lcom/google/android/material/datepicker/YearGridAdapter;
    .restart local v2    # "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    :cond_7
    return-void

    .line 277
    .end local v1    # "adapter":Lcom/google/android/material/datepicker/YearGridAdapter;
    .end local v2    # "layoutManager":Landroidx/recyclerview/widget/GridLayoutManager;
    :cond_8
    :goto_5
    return-void
.end method
