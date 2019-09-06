Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BDCABE49
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Sep 2019 19:07:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZQTdYkVVq8qwvHe6gpX0z5ETuc0h7K9Y192zwHbk0k=; b=TceU5N+1m+iyvZ
	seC3cFjZezCN8DGHJ0XIe/gw/nIGE5wn5zRnjRoI5j3tx1k6v/GDyjOTi4NxKY6d+ZFofFkznyQhe
	CJGiyC943wo8JX0cmxTgRabyuAnOLA3JiNsNF6PKf00gnqmKVRTBLH8YDLJVQAWoFsW4yQabu8YH4
	OKFvw56Nd7zPlOo7E+Z1WewwVggSxfIq2xf1/IJouoe0m9qB5JOToVwIWxTvW2rN/bf0hzLcwecPS
	Vg8oi6RanU2bZMkrrsXBVlxsCMEk78srrVkO5vHCaW01A9/w5K9g8BQ0JAWIf8d5fSIoP6OhTDR3K
	Ki930qa5S7Wi1fYdr4/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Hhy-0002ks-DX; Fri, 06 Sep 2019 17:07:38 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Hhr-0002hj-5y
 for linux-riscv@lists.infradead.org; Fri, 06 Sep 2019 17:07:32 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4390268B05; Fri,  6 Sep 2019 19:07:25 +0200 (CEST)
Date: Fri, 6 Sep 2019 19:07:25 +0200
From: Christoph Hellwig <hch@lst.de>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH 8/8] riscv: ignore the SYS_RISCV_FLUSH_ICACHE_LOCAL flag
Message-ID: <20190906170725.GA13047@lst.de>
References: <20190828060942.GA21592@lst.de>
 <mhng-6070e215-c109-4d92-abbc-e77a2178657d@palmer-si-x1e>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mhng-6070e215-c109-4d92-abbc-e77a2178657d@palmer-si-x1e>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_100731_368198_A0D2E333 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 11:46:33AM -0700, Palmer Dabbelt wrote:
> This is used by userspace as a thread-local icache barrier: there's an 
> immediate fence on the current hart, and one will be executed before that 
> thread makes it to userspace on another hart.  As far as I can tell this is 
> implemented correctly but not optimally: there's always a fence, but we 
> emit an unnecessary fence when a different thread in the same context is 
> scheduled on a different hart.
>
> I suppose maybe we should attach the local fence mask to a task_struct 
> instead of an mm_struct, which would trade off an extra load in the 
> scheduler (to check both places) or more fences in the global case (on 
> every thread getting scheduled) for fewer fences in the local case.  I feel 
> like it's not really worth worrying about this for now.
>
> The construct seems reasonable to me.

I haven't been able to poke holes into that idea yet, but I'll try
a bit more once I find a little time.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
