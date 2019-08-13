Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBBB8B059
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 08:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQim+xLNhKFe6jBD5n85+XNBnlwvFz37tedznZP/Qs0=; b=UNB02v8uCF+zQv
	8957mqxe+2M8nG/+4kO1pPcjTAhTwIRPNx0ulIlV09U3XM/4ZnEtHn7pM603r5064wFAsj55C0JDJ
	JhPYk4KTltr7rz++GCDUDCCeARupHaXW2tjCCidzaUOU0wfNQhrwf+bftqo39GjDyOBpZa/zeFb+s
	YvtT/O9DKgmZWF5rWXE/8795odxDPjH5uEPE5h7ESZHKE+0rMPtHS3VZSWb8ZH4GmssiSnIPvDZLq
	cgDWq1p1FW3ZFwWt6DYpfrchTocH1J/Jlr+rYyG3h9x1fy45rGx7eW+RR6A/pMfYVLd9BVTcC4QX3
	gdfEYek/WmUHvXoqL9Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQlx-0005VL-HV; Tue, 13 Aug 2019 06:59:09 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hxQlt-0005V1-O2; Tue, 13 Aug 2019 06:59:05 +0000
Date: Mon, 12 Aug 2019 23:59:05 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Charles Papon <charles.papon.90@gmail.com>
Subject: Re: [PATCH] riscv: kbuild: drop CONFIG_RISCV_ISA_C
Message-ID: <20190813065905.GA21020@infradead.org>
References: <alpine.DEB.2.21.9999.1908061929230.19468@viisi.sifive.com>
 <CAEUhbmVTM2OUnX-gnBZw5oqU+1MwdYkErrOnA3NGJKh5gxULng@mail.gmail.com>
 <CAMabmMJ3beMcs38Boe11qcsQvqY+9u=2OqA0vCSKdL=n-cK9GQ@mail.gmail.com>
 <20190812150348.GH26897@infradead.org>
 <CAMabmM+YX3L-J1GCvDaC9H66YMArfs6PuKCsE_dNMBtApOxZig@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMabmM+YX3L-J1GCvDaC9H66YMArfs6PuKCsE_dNMBtApOxZig@mail.gmail.com>
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <atish.patra@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Bin Meng <bmeng.cn@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 12:18:22AM +0200, Charles Papon wrote:
> > Because it it the unix platform baseline as stated in the patch.
> I know that, but i'm looking for arguments why RVC could't be kept as
> an option, especialy it is only an optimisation option without
> behavioral/code changes.
> 
> That baseline make sense for heavy linux distributions, where you
> expect everybody to compile with a baseline set of ISA extentions, to
> make binary exchanges easier.
> But for smaller systems, i do not see advantages having RVC forced.

I don't fully agree with the benefits, but then again how little
impact using the C extension has on the kernel build I'm now convinced
that keeping it should be ok.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
