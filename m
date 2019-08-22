Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B5F98919
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 03:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bdO3tRAyerGxrr6B1oz6bdZn9FEH3CLfXPFJP0QABN4=; b=hiddlhebLu1MeA
	orS4iFphcSEyTS47Aym0RbJ0yRw8Rfqmm08LBYLZsWpPfKU7CcJcb7KaHEMpA6kqZkkULKXIBRSbj
	nEhMmH3f0pZOp5mQINjQYnCAvp3jihMqcwfOufcEnIFUxluBhkvMzY6Vk38VivP2konS7PPcCKbTw
	jil2DuV/IS7McJBQdQX6y3493baIvbekEZaVI63m0me24bEQB+qS2WmAf0ifSjytkY+WXPeVP5w5Z
	CLH/g0S+QcuuusfCxVEpr9Rm5AtwWsjtwE3SdUskPGhifmtKlO6nyaVko57p8vM4S8QaQxYJU+vzI
	0AS374YW/nTY6lVVdNPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0cFG-0002bM-RZ; Thu, 22 Aug 2019 01:50:34 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0cFD-0002b2-Ps
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 01:50:33 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E1AA168BFE; Thu, 22 Aug 2019 03:50:27 +0200 (CEST)
Date: Thu, 22 Aug 2019 03:50:27 +0200
From: Christoph Hellwig <hch@lst.de>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v3 2/3] RISC-V: Issue a tlb page flush if possible
Message-ID: <20190822015027.GB11922@lst.de>
References: <20190822004644.25829-1-atish.patra@wdc.com>
 <20190822004644.25829-3-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822004644.25829-3-atish.patra@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_185031_987094_AA34CF42 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Anup Patel <Anup.Patel@wdc.com>,
 Andreas Schwab <schwab@linux-m68k.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 05:46:43PM -0700, Atish Patra wrote:
> +		if (size <= PAGE_SIZE && size != -1)
> +			local_flush_tlb_page(start);
> +		else
> +			local_flush_tlb_all();

As Andreas pointed out (unsigned long)-1 is actually larger than
PAGE_SIZE, so we don't need the extra check.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
