Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBAD838B0
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 20:37:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dYA8AkxRhQeN2y87aYTjn/q2xUqGC4bg1MyKxHfVQio=; b=IXLT/q+dHEzqMH
	tHih7MI3zY7gFuG06he5evk8As+Wb1LbHLOrhx1O8wsTB+sAxcxH18KfQuopD6Ibmx6nyHqVT2hG5
	ToTWzWxorNHhWLi9FJWwGC7b3RJ9+6qfR0De7N61gqPrfA42y7Bt6HGsQ//cMF4o1KQhPpUtmVygm
	eRbau5TDxJYpTCZmT5ZTNxhvG8HMWarF2uSusae2msepZOHmaC2nnR9ryRT9drYO3QaJDqvppGX93
	hvIgjmTp1EnUm4mldtNBCVUdi6hSr5cHPu3br77SY9P/CkS+IKJlWKljBeEuCS3v5ys/i0HK7ZsLE
	3SJrWSF7gmMdDQ4UUHpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv4LH-00005A-Lh; Tue, 06 Aug 2019 18:37:51 +0000
Received: from pb-smtp1.pobox.com ([64.147.108.70])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv4LF-0008WJ-5c
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 18:37:50 +0000
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id 17C691677C4;
 Tue,  6 Aug 2019 14:37:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=o6RJbZTUTi4jFuXhFVfJQVZYJes=; b=fy3Wp8
 DI+YyFTH0HdYTCOsNVX8Ho3uhaNFr6I0rAPlEw5F0XHA5TB4+azYegf8b2/jiaUH
 Z6/G0zokpPYZ1d+xv71XAJnRtjjyEu7x7Sa2Ix0k0BiUol7vN3En2OXC6oJQKmy3
 nPVLPjnYXNjeWuq5L8O7gBIAjegDKEfXblkXM=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id 0DB541677C2;
 Tue,  6 Aug 2019 14:37:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=0YvkOmCAJdANlNTo8ct/4vVBLFRjnNJQaLBZy5Flbu8=;
 b=YgIZmpuxGPort0vb9c3rTwI7rxj8ORN/nwjOJfXt/9xZoF5swPmjVfA/4pmPDwd2wGM8PKatK1u4ThZhNiRFoAOFGSj6uiPyVF8+2JmDNuceq+QUDfAwgPIVTKLfluwxacKDuZc5IiHRQ0Pb22sozLNsBOUl9mUez8sqJG049PY=
Received: from yoda.home (unknown [24.203.50.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 82B8E1677C1;
 Tue,  6 Aug 2019 14:37:44 -0400 (EDT)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id B244A2DA017B;
 Tue,  6 Aug 2019 14:37:43 -0400 (EDT)
Date: Tue, 6 Aug 2019 14:37:43 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: About __udivdi3
In-Reply-To: <mhng-206638da-813f-4beb-bb68-ec2ff8fe0730@palmer-si-x1c4>
Message-ID: <nycvar.YSQ.7.76.1908061413360.19480@knanqh.ubzr>
References: <mhng-206638da-813f-4beb-bb68-ec2ff8fe0730@palmer-si-x1c4>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-Pobox-Relay-ID: 47BB6C46-B879-11E9-BD09-46F8B7964D18-78420484!pb-smtp1.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_113749_315658_93AA2919 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tesheng@andestech.com, dslin1010@gmail.com, alankao@andestech.com,
 rick@andestech.com, Christoph Hellwig <hch@infradead.org>, kclin@andestech.com,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Jim Wilson <jimw@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 6 Aug 2019, Palmer Dabbelt wrote:

>    Author: Palmer Dabbelt <palmer@sifive.com>
>    Date:   Tue Aug 6 08:03:59 2019 -0700
>    
>        RISC-V: Remove udivdi3
>    
>        This should never have landed in the first place: it was added as part
>        of 64-bit divide support for 32-bit systems, but the kernel doesn't
>        allow this sort of division.  I must have forgotten to remove it.
>    
>        This patch removes the support.  Since this routine only worked on
>        64-bit platforms but was only built on 32-bit platforms, it's
>        essentially just nonsense anyway.
>    
>        Signed-off-by: Palmer Dabbelt <palmer@sifive.com>

Acked-by: Nicolas Pitre <nico@fluxnic.net>

Related: there is still some opportunity for performance gain on rv32 by 
providing an assembly version of __arch_xprod_64() if someone is up to 
it.


Nicolas

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
