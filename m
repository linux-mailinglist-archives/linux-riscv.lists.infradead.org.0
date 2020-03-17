Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 251D6188609
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Mar 2020 14:41:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hX6CKNL7CusklL+Fw9f8ryCwL5vN/tcTcBjv1KpGoiM=; b=iebkM18i5AN4R04R/uB5vUsd9
	cZNmK+myIsdAvaIP7SQ6xcAzbmJdx7Pva3d4W1Du4awtPGJMGiuCFShfCxggh/MuC1xw4s6Rcezys
	bGS2YVzMSi2NEMrnrGDHm7DSrl5CwwNIuyUazPmhWpugRVUxwGQtQiRQyvzHjSNWRvGRXfFAv9Yha
	2mZHsv4ta3OGpn5vs6yVcfadZruppS2eHDRNLFjMvOoAPUf2ingqPYw4FPRfKYIXX3LpvtSuRXhhY
	6ppfGRqSnnE2tRc4CUGV1TTgYZcYqgAMOiSCRO5p9jLi07RcTLyGJvks/mtZf4YQYKeFseBISjnsX
	g2jrYeuAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jECTB-0001Fv-I4; Tue, 17 Mar 2020 13:41:21 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jECSZ-0000ab-33; Tue, 17 Mar 2020 13:40:47 +0000
Date: Tue, 17 Mar 2020 06:40:43 -0700
From: Matthew Wilcox <willy@infradead.org>
To: JaeJoon Jung <rgbi3307@gmail.com>
Subject: Re: [PATCH] Add next, prev pointer in xa_node at the lib/xarray.c
Message-ID: <20200317134043.GA22433@bombadil.infradead.org>
References: <CAHOvCC7ZLpOkdWPjY3art8LYOh2SJWwgqYRHRMVm-E4-kD06mA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHOvCC7ZLpOkdWPjY3art8LYOh2SJWwgqYRHRMVm-E4-kD06mA@mail.gmail.com>
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

On Tue, Mar 17, 2020 at 04:32:34PM +0900, JaeJoon Jung wrote:
> Hi Matthew,
> I add next, prev pointer in the xa_node to improve search performance.
> XArray currently has the following search capabilities:
> 
> Search algorithm performance is O(n) = n x log(n)

That's not how "big-O" notation is used.
https://en.wikipedia.org/wiki/Big_O_notation

What you mean to say here is O(n.log(n)).

> For example,
> XA_CHUNK_SHIFT 2
> XA_CHUNK_SIZE 4

I'm not really interested in the performance of a cut-down radix tree.
You can re-run the numbers with a SHIFT of 6 and SIZE of 64 to get a
more useful set of performance numbers.

> If you connect the leaf node with the next and prev pointers as follows,
> the search performance is improved to O (n) = n.

But that's not free.  Right now, the xa_node is finely tuned in
size to 576 bytes on 64-bit systems (32-bit systems are a secondary
consideration).  That gets us 7 nodes per page.  Increasing the size any
further reduces the number per page to 6, which is a pretty meaningful
increase in memory usage.

> @@ -1125,6 +1125,8 @@ struct xa_node {
>         unsigned char   count;          /* Total entry count */
>         unsigned char   nr_values;      /* Value entry count */
>         struct xa_node __rcu *parent;   /* NULL at top of tree */
> +        struct xa_node __rcu *prev;     /* previous node pointer */
> +        struct xa_node __rcu *next;     /* next node pointer */

You should be indenting with tabs, not spaces.  Or your mail system is
messing with your patches.


