Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B226829D8
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 04:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7IUMqj4pSIlWw5A3OCvCpFaZi7ocYzXLhpG3QVbcG0=; b=bJfEqpsouvGL96
	+IlWU5JXFiRkiKMsbeMTIadgO7sHzBWUOGofqBQZYzbhFmeNp8CmI+2pgERY4dxJrGJ2/WeeAUFDD
	NVP02YSBjR8Occr+pwjvg5nZSJbusA1y7OT0XP006RQ56phvok3b8gOXHcqKSxr7bmot2CiHRzRGN
	vh+D1eTwTBaxNEoyKUu8spQMaNYtsdJlQTiJiQe/xzZlfTrzy6Xxx3mdGzvwfgwh2Q9j+rj758wzT
	cy95eOhjGHi8PmAe8JC5qsuNj6zFLQQOGgC5WawfAl96sgKpTpPpYRS0lz4Lr6iRzC6GgbaJjIuDt
	7wJsqo//0zqyXA+QETpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huphM-0000yV-6k; Tue, 06 Aug 2019 02:59:40 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huphJ-0000y9-0h
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 02:59:38 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x762mWId095102;
 Tue, 6 Aug 2019 10:48:32 +0800 (GMT-8)
 (envelope-from tesheng@andestech.com)
Received: from andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Tue, 6 Aug 2019
 10:59:25 +0800
Date: Tue, 6 Aug 2019 10:59:25 +0800
From: Eric Lin <tesheng@andestech.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: About __udivdi3
Message-ID: <20190806025925.GA18995@andestech.com>
References: <20190805055844.GE4292@andestech.com>
 <20190806013723.GA5417@andestech.com>
 <alpine.DEB.2.21.9999.1908051911290.13971@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1908051911290.13971@viisi.sifive.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x762mWId095102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_195937_303852_DAEE6F34 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: "dslin1010@gmail.com" <dslin1010@gmail.com>,
 Alan Quey-Liang =?utf-8?B?S2FvKOmrmOmtgeiJryk=?= <alankao@andestech.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 Rick Jian-Zhi =?utf-8?B?Q2hlbijpmbPlu7rlv5cp?= <rick@andestech.com>,
 =?utf-8?B?Sy5DLiBLdWVuLUNoZXJuIExpbijmnpflnaTmiJAp?= <kclin@andestech.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "jimw@sifive.com" <jimw@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Paul,

On Tue, Aug 06, 2019 at 10:13:40AM +0800, Paul Walmsley wrote:
> On Tue, 6 Aug 2019, Eric Lin wrote:
> 
> > Cc: mailing list
> > On Mon, Aug 05, 2019 at 01:58:56PM +0800, Eric Lin wrote:
> > > Hi Palmer/Paul, 
> > > 
> > > Recently I encounter a problem that the output from __udivdi3 is wrong.
> > > The compiler will generate __udivdi3 library call when doing 64-bit
> > > over 64-bit division on 32-bit platform.
> > > 
> > > It seems __udivdi3 only supports 64-bit platform.
> > > Do you have any comments? Thanks.
> 
> It sounds like you're describing a potential issue with gcc, rather than 
> the kernel.  If that's so, then the gcc mailing list(s) would be a better 
> place to discuss this:  https://gcc.gnu.org/lists.html
>  
> 
> - Paul

Sorry, maybe I didn't describe it clearly.
When doing 64-bit over 64-bit division on 32-bit platform, the gcc will
link the __udivdi3 function in arch/riscv/lib/udivdi3.S, but the output
is wrong because the function is designed for RV64 ABI only.

I've tried to modify the arch/riscv/Makefile to make it link libgcc's
__udivdi3 library. The output is correct after using the libgcc's __udivdi3.

So, I don't think the __udivdi3 in arch/riscv/lib can support 64-bit
over 64-bit division on 32-bit platform.

Best Regards,
Eric

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
