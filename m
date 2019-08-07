Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F9F84280
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 04:33:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wa1/6qLGA8OutWXq+6zE4HuvIqTcoLidSmEICiJ5sao=; b=dLEa4chqAZj7HX
	wK066+riNVZWgLh7NK7/I13zC3S+x9EkPzEOaDIfrhC+rAhcuSj4U9Kb3BPZbVkb2LSbIdjYf8WSJ
	8SnX9UGRmShHIwI4L6w1nVYcvor5PYtpWy6nnznNobj5+96ALILvEFGmU5yh6AH6aJDAXumrtkuW0
	K7Gs4d/oIXOa7Bmqb4fzKJviu6dBISYHBSMwbcuGd33g5T7AWGv9+lKLQb8/pXkTEzpii0klxR6qi
	emBlMEZWBdVl163sBfSgoyDp1+sQaKEK5gXfMKOOERYILnKtSqYlyE10t82nsHwwN4RYmG5p723Ox
	Ej8MBGhPpL+6SxnGb1eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvBln-0001U9-W8; Wed, 07 Aug 2019 02:33:44 +0000
Received: from pb-smtp2.pobox.com ([64.147.108.71])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvBlk-0001M2-Do
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 02:33:41 +0000
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id B454D15C4D1;
 Tue,  6 Aug 2019 22:33:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=Ck7g7h0DLpc/51G470KEQPNlZ6M=; b=GV4AwY
 3cEOEMVsnIqzQ9riZjhKPblhtx59ZBJM6RctBWi1pL+75fX3i8Zdb9pa+DMbp8my
 9Nq/NzMtzTQutX1/LzVW1o4cpS0ebBxfU+LFbG8gHxpt8cHTS8ZQ+wrYYvwWisrv
 M+zNZRX3Byyl50V4wrbqihmkAGx3asiYtwHnQ=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id AD4E015C4CF;
 Tue,  6 Aug 2019 22:33:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=5TxUhFLsv3T5vTv45QBt6IrS7MXkrk5IE9Q+Bx60fxA=;
 b=bOBzoNWAI8Lqnztv4xxerqkzHCuK/bmBhzzPMcMHy4LiYnPvez9cQEczZzTpFUydNVyuCdUMKrDpBRdYbICrRUjR59NOtboSozW5JVN4br6QoK8/FkO4m1YjGAzIQvlrwpKo5cgwcRBwZ935mFFt7hPACWSeIVFaMlOXeKnvZ28=
Received: from yoda.home (unknown [24.203.50.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 3C43C15C4CE;
 Tue,  6 Aug 2019 22:33:36 -0400 (EDT)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id 527B92DA017B;
 Tue,  6 Aug 2019 22:33:35 -0400 (EDT)
Date: Tue, 6 Aug 2019 22:33:35 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] RISC-V: Remove udivdi3
In-Reply-To: <alpine.DEB.2.21.9999.1908061907340.25231@viisi.sifive.com>
Message-ID: <nycvar.YSQ.7.76.1908062230570.19480@knanqh.ubzr>
References: <20190807000508.9477-1-palmer@sifive.com>
 <20190807001846.GA21655@andestech.com>
 <alpine.DEB.2.21.9999.1908061738130.13971@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1908061907340.25231@viisi.sifive.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-Pobox-Relay-ID: C1E0530A-B8BB-11E9-814E-72EEE64BB12D-78420484!pb-smtp2.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_193340_581174_FE529BB5 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.71 listed in list.dnswl.org]
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Alan Kao <alankao@andestech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 6 Aug 2019, Paul Walmsley wrote:

> This patch breaks the rv32_defconfig build, since udelay() still relies on 
> __udivdi3().  I'll queue "riscv: delay: use do_div() instead of 
> __udivdi3()" along with it: 
> 
> https://lore.kernel.org/linux-riscv/alpine.DEB.2.21.9999.1908061906240.25231@viisi.sifive.com/T/#u

> +       u64 n;
> +       u32 rem;
> 
>         if (unlikely(usecs > MAX_UDELAY_US)) {
> -               __delay((u64)usecs * riscv_timebase / 1000000ULL);
> +               n = (u64)usecs * riscv_timebase;
> +               rem = do_div(n, 1000000);

You may omit rem and ignore the return value here.


Nicolas

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
