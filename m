Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 295943C825
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 12:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zt8t+p4g53IZzlqDapZcJVDLv3lB2ShfeMp6g3etqVg=; b=LcAJc7SH5ChMqn
	C9vNMhh90we5fc92XJCuAwmehl6ryCfPfUUtrWIAZ40oyQXakOPPJbFNairCPuWYLCjv62wBuoi4q
	R5nbt0pi/71O4BTrBsKmbWPRdl+iS9vTmFKabcfXkGgTb2LExDNSnENDyZALVqRlsPLcJJBYWbKlU
	bUsqUtwW9FvTxWI2Zp6Pp+JVrnBJh9xOyt4MI2kQFZEGWi6fCMbkS1eAZ0DVL9t5DLWqylklGgAy0
	zjmaYwez2igXijcmRXdFgfqAOaAhCE2BZJiv239bZDz0pjG+AsDl2Ywj5neXKQ2DxFebupf0B78dO
	ETZZS5K4kB325mahJoPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadhi-0003uh-CQ; Tue, 11 Jun 2019 10:08:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hadhN-0003fL-Ot; Tue, 11 Jun 2019 10:08:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 66884337;
 Tue, 11 Jun 2019 03:08:13 -0700 (PDT)
Received: from [10.1.29.141] (e121487-lin.cambridge.arm.com [10.1.29.141])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5692A3F557;
 Tue, 11 Jun 2019 03:09:54 -0700 (PDT)
Subject: Re: binfmt_flat cleanups and RISC-V support
To: Christoph Hellwig <hch@lst.de>
References: <20190610212015.9157-1-hch@lst.de>
 <4f000219-4baf-b03e-9003-26482640d3de@arm.com>
 <20190611081117.GA22110@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <d41f1077-936f-ce5b-2121-5a5ade521a98@arm.com>
Date: Tue, 11 Jun 2019 11:08:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190611081117.GA22110@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_030813_858870_CF452D73 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 Greg Ungerer <gerg@linux-m68k.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 6/11/19 9:11 AM, Christoph Hellwig wrote:
> On Tue, Jun 11, 2019 at 09:05:45AM +0100, Vladimir Murzin wrote:
>> I'm wondering if you have a branch with these changes so I can give
>> it a try on ARM NOMMU platforms?
> 
> 
>     git://git.infradead.org/users/hch/riscv.git riscv-flat
> 

Thanks! I gave it a go and provided my tags for relevant patches.

Cheers
Vladimir

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
