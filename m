Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E2F8A1D8
	for <lists+linux-riscv@lfdr.de>; Mon, 12 Aug 2019 17:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XodlDprNiF0w1AT/SOPStIUcI2CKShZyJD+JVPNzqUU=; b=OjDIQD332/L5n9
	nSqeT+8/aTHP30noTEAWXMWYWicbliJ/hLuMOGt18VnVI0tNQ09u2SCInzKU86kVlRT3sga0yV2kZ
	KcZSCGz4nDBZlb6Xn+TOzBz8kfI8E2l2/5vGgrf+fFrUTVcHoIhnJeRrHoN1PA8Pt5c+37xudUBto
	w+GHjVYS+FEZfVFAgRmtR/k2+jb178VXaPdzle3//9gxpg9WX5xyy1Mt0HIghDN1OCqRFvSJn5Kxq
	+wqJ4ZzFYi2NuCzomkG72EX2uM6Mp8D33QxVC1SeeNp0HegbtpgTqWBySAUih/0VTqs+pSCKymjNr
	64YERbuDGvAlEC/jSi+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBrW-0006Oa-FA; Mon, 12 Aug 2019 15:03:54 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hxBrQ-0006NF-Tz; Mon, 12 Aug 2019 15:03:48 +0000
Date: Mon, 12 Aug 2019 08:03:48 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Charles Papon <charles.papon.90@gmail.com>
Subject: Re: [PATCH] riscv: kbuild: drop CONFIG_RISCV_ISA_C
Message-ID: <20190812150348.GH26897@infradead.org>
References: <alpine.DEB.2.21.9999.1908061929230.19468@viisi.sifive.com>
 <CAEUhbmVTM2OUnX-gnBZw5oqU+1MwdYkErrOnA3NGJKh5gxULng@mail.gmail.com>
 <CAMabmMJ3beMcs38Boe11qcsQvqY+9u=2OqA0vCSKdL=n-cK9GQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMabmMJ3beMcs38Boe11qcsQvqY+9u=2OqA0vCSKdL=n-cK9GQ@mail.gmail.com>
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
Cc: Atish Patra <atish.patra@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Bin Meng <bmeng.cn@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 02:18:53PM +0200, Charles Papon wrote:
> Please do not drop it.
> 
> Compressed instruction extension has some specific overhead in small
> RISC-V FPGA softcore, especialy in the ones which can't implement the
> register file read in a asynchronous manner because of the FPGA
> technology.
> What are reasons to enforce RVC ?

Because it it the unix platform baseline as stated in the patch.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
