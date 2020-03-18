Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 573D218934F
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 01:49:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mEZjMRu2hEVHCCshJE6Ur56JVGlCCroTKLH+YSFAD7w=; b=PApTh/cIRJTkPqVCxjNzmcRGs
	n7HkRGW7QtqjKjvV5aYlW5npO7KGihyGj/lGxF7s6dsyLiCuxDuRto+EwBDe2DdLr97QcySfWIDfy
	dRUX9F282JctRHIKRgl1cxlAZe+9V3QhdTTS4dpUwWTOHKNiNo8HJxygLe4cGjAFd6pPixTjnhzUh
	g7HLzE3Wr0lvbMvITcMbzwFz7bWu6GxB/QSEhOf5YZpvITG88cMtp1QBn93T8Lo/iPppJSkMM6xM3
	Nrjt5Jk+57EvINwyJ5SkufU65N3c8/TaTP+y4krqh38PmecF/+VFEX2p3Y2xsG7sFU3abghrXvzDm
	dZyCHidAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEMu1-0007FL-Ix; Wed, 18 Mar 2020 00:49:45 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEMty-0007Es-3E; Wed, 18 Mar 2020 00:49:43 +0000
Received: by mail-pg1-x542.google.com with SMTP id u12so12671368pgb.10;
 Tue, 17 Mar 2020 17:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mEZjMRu2hEVHCCshJE6Ur56JVGlCCroTKLH+YSFAD7w=;
 b=Io7cCr2Ux3LNSgzS/WNfg+3Nv6rjTYHZTgDS03ZRcXDj93Q+S5moUxm0sRGywBHEbx
 JVTRcyB58gDjfIZLSTC5eRL68oDPalq2F4KGkMgRXJKpmpNMnpomfkDzjGIQoOL74DSv
 4ltNeOcpmHVfK6YMpE0JXoawQKT3dKELvrI6yVpSydusg7FHIkVDwtc6QakVETnsgZe2
 GHezEWSDwKV2FLtll34AUtPmJhL2/YhvSmjRit+ui4U61ypowKhtxzUXMVU3zFXkbT2S
 xqlz3lnuZnHbI7715ufXM/amo9ubX4Ro4NYNUbzlqZgWpC4ix0pwiaml58soZIeI9mfi
 QT9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mEZjMRu2hEVHCCshJE6Ur56JVGlCCroTKLH+YSFAD7w=;
 b=TWDIrLRq0eDmzSlQyI4RcSrqmKPojR/cyAgxs7aJYg6cTdGT/FmadKg1cDSCfk4z5v
 qI47IxWdjGx/eH5ckZHJmIC1G/a/Y4yAGQimP9LY9WPZbiRP8zJcpyzwcS3R6OYgEHNE
 a0MCTEdWljiXMH1ELpnARijtiemNfcdd/14v7raO5mrbZHsca0Nwedn+0eOuFIrQJxaX
 9OMfrXPANXwLN3jXkcIO0UK2gQ4cBrb+/VnOgw5VwfD1i/9jGgMOUxYxhCTuYCIuDh5V
 5VooQh/Y9pqYYehDXvJuury7dsvJVToImi+J/mVo5+nlHnIWKIw08CdfjWhGUKazqEBQ
 oglg==
X-Gm-Message-State: ANhLgQ0qNtZ//x41ZUORpfcZLQvEYdKIsHAbE13ydmg69YyAz2CabSZA
 2bW4mjc54+GcYRmJNzU6oiFrmfBTlsKzgrOYB00=
X-Google-Smtp-Source: ADFU+vulDfQJe56I6PtipWkmVU80PG2acfuR+y5k+u68pckhTDj9tsFiLPV2dZecfSsyzei9Czac70YRpukrXrlNl+Q=
X-Received: by 2002:aa7:8dcc:: with SMTP id j12mr1528707pfr.57.1584492581383; 
 Tue, 17 Mar 2020 17:49:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAHOvCC7ZLpOkdWPjY3art8LYOh2SJWwgqYRHRMVm-E4-kD06mA@mail.gmail.com>
 <20200317134043.GA22433@bombadil.infradead.org>
In-Reply-To: <20200317134043.GA22433@bombadil.infradead.org>
From: JaeJoon Jung <rgbi3307@gmail.com>
Date: Wed, 18 Mar 2020 09:49:30 +0900
Message-ID: <CAHOvCC4WSiCD93A=DyfY8_3uqZAGXrdj4=GA4cyQx6ZqdakUtg@mail.gmail.com>
Subject: Re: [PATCH] Add next, prev pointer in xa_node at the lib/xarray.c
To: Matthew Wilcox <willy@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_174942_165996_EFEC02ED 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [rgbi3307[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rgbi3307[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-riscv <linux-riscv@lists.infradead.org>, linux-kernel@vger.kernel.org,
 koct9i@gmail.com, maple-tree@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Matthew,
Thank you for your deep response.

I think XArray is a very well-made structure that requires no further
improvement if the indexes are dense in a 64-bit system.

Since xa_node is 576 bytes and is set to fit 7 per 4kB page,
adding a data type to xa_node is rather a memory waste problem.

#define XA_CHUNK_SHIFT          (CONFIG_BASE_SMALL ? 4 : 6)
XA_CHUNK_SIZE is 32 or 64

XA_CHUNK_SIZE is 32 or 64, and currently XAarray is 64 optimized,
so modifying it may have a counterproductive effect.

There is a downside to the well-designed XArray, but if the indexes
are not dense or deleted a lot, the memory of the slots in the xa_node
is increased and the search cost for logn increases at f (n) = O
(nlogn)

My worries are here and I hope you understand my efforts to solve it.

My attempts described below are meaningful when XA_CHUNK_SHIFT is 4 or
2, and can solve the slowdown in search speed when indexes are deleted
and not concentrated.

When XA_CHUNK_SHIFT is 2(XA_CHUNK_SIZE is 4), the XArray configuration
is as follows.
(It is difficult to express the picture in text.)

xarray->head : xa_node : index: 0  16  32  48
                +---+---+---+
                                |   |   |   |
        +-----------------------+   |   |   +------------+
        |              +------------+   |                |
        |              |                |                |
    0  4  8  12    16  20  24  28   32  36  40  44   48  52  56  60
    +--+--+---+    +---+---+---+    +---+---+---+    +---+---+---+
        |              |                |                |
  +-----+              |                +-------+        +---------------+
  |                    |                        |                        |
  0 1 2 3 <==>... <==> 16 17 18 19 <==>... <==> 32 33 34 35 <==>...
<==> 48 49 ..

In the above, if xa_node is connected to next and prev, it does not
search the parent node, so the logn disappears from f (n) = O (nlogn),
which improves search efficiency with f (n) = O (n). In fact, this is
already well-known in traditional algorithms, but I hope you can
understand it with the effort applied to XArray.

Best Regards,
JaeJoon Jung.

On Tue, 17 Mar 2020 at 22:40, Matthew Wilcox <willy@infradead.org> wrote:
>
> On Tue, Mar 17, 2020 at 04:32:34PM +0900, JaeJoon Jung wrote:
> > Hi Matthew,
> > I add next, prev pointer in the xa_node to improve search performance.
> > XArray currently has the following search capabilities:
> >
> > Search algorithm performance is O(n) = n x log(n)
>
> That's not how "big-O" notation is used.
> https://en.wikipedia.org/wiki/Big_O_notation
>
> What you mean to say here is O(n.log(n)).
>
> > For example,
> > XA_CHUNK_SHIFT 2
> > XA_CHUNK_SIZE 4
>
> I'm not really interested in the performance of a cut-down radix tree.
> You can re-run the numbers with a SHIFT of 6 and SIZE of 64 to get a
> more useful set of performance numbers.
>
> > If you connect the leaf node with the next and prev pointers as follows,
> > the search performance is improved to O (n) = n.
>
> But that's not free.  Right now, the xa_node is finely tuned in
> size to 576 bytes on 64-bit systems (32-bit systems are a secondary
> consideration).  That gets us 7 nodes per page.  Increasing the size any
> further reduces the number per page to 6, which is a pretty meaningful
> increase in memory usage.
>
> > @@ -1125,6 +1125,8 @@ struct xa_node {
> >         unsigned char   count;          /* Total entry count */
> >         unsigned char   nr_values;      /* Value entry count */
> >         struct xa_node __rcu *parent;   /* NULL at top of tree */
> > +        struct xa_node __rcu *prev;     /* previous node pointer */
> > +        struct xa_node __rcu *next;     /* next node pointer */
>
> You should be indenting with tabs, not spaces.  Or your mail system is
> messing with your patches.
>

