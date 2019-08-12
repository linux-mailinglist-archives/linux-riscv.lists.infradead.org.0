Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3999D8A1D3
	for <lists+linux-riscv@lfdr.de>; Mon, 12 Aug 2019 17:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vjf4p3d1KkicmlchSq17B4HO5ZXI6Mk4o0NqjFKtT6c=; b=RqdDW48fGMrBFR
	U4gCHv9kdkBp82nquYxgf5BSdG897d0QK8iPaguHIP7YJ10x7xDF3CTgFJvn68uwfN+fEEiHjMftk
	a5+EdW+TcYd3sOuf2g7OP/APJocdG9ln7d8pM0AooBtMBO7ysKZWrfyOWB7+kun01ZhTbJ6hNe15c
	LTqZowIsanVRibRKFAuXg8kvOwE/9/FhhVTD8dzeNhSrckM5YHNTzDTeaPMwU7nYmZ0wVr1RwBqRF
	BCH2ILXnVeaRSGw+JhsQp7alW4J3FOKyzRAusol5OW2rK2crLcAwO+E2ciRAGuqyNL8dyGoB7TFyU
	BsJx83A6OW3B7fMuPtUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBqq-00063f-Jp; Mon, 12 Aug 2019 15:03:12 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hxBqP-0005fO-Ce; Mon, 12 Aug 2019 15:02:45 +0000
Date: Mon, 12 Aug 2019 08:02:45 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Bin Meng <bmeng.cn@gmail.com>
Subject: Re: [PATCH v3] riscv: Using CSR numbers to access CSRs
Message-ID: <20190812150245.GG26897@infradead.org>
References: <1565184656-4282-1-git-send-email-bmeng.cn@gmail.com>
 <1565194418-9672-1-git-send-email-bmeng.cn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565194418-9672-1-git-send-email-bmeng.cn@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Andreas Schwab <schwab@suse.de>,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 09:13:38AM -0700, Bin Meng wrote:
> Since commit a3182c91ef4e ("RISC-V: Access CSRs using CSR numbers"),
> we should prefer accessing CSRs using their CSR numbers, but there
> are several leftovers like sstatus / sptbr we missed.
> 
> Signed-off-by: Bin Meng <bmeng.cn@gmail.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
