Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894AF1C33DA
	for <lists+linux-riscv@lfdr.de>; Mon,  4 May 2020 09:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YSgK9NX3piO3DzNizXxkN0/zsw63Q894rGaW640ysOM=; b=nCwXCB0mgj7L0z4+cM1d43qA1
	locaMmwQ+5ku8qw5PenFUFGPvwhEdtwNty62IkuMKcQVBkJ5Vxv+/ZBnCj1tsJ73PIdvbr32YdQKz
	M5OKP5Fox168FdobeM7n0SokemhaAl3ugrWvDFiZATE8nWjR7YelFoLqkdmRUHRBfIA9xHB5xWgEy
	78lvkUjXRoRtm+yPah0KCuXlkty6na7OGOIicQO2l1WltvAaHW3sFPAav8/2gwQR0i3usGcv+EUFp
	iyK9iA6uWIE+BhH4D8dvkpW1wbVwBZyHi/pMpjvWBMiDOGYAQw31uzssfeinkrf9uBQ6pmPqft4Vc
	Jlfwkmu9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVVri-0003m5-BG; Mon, 04 May 2020 07:50:14 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVVre-00020m-Hb
 for linux-riscv@lists.infradead.org; Mon, 04 May 2020 07:50:12 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49Fw4X1fhdz1s2JQ;
 Mon,  4 May 2020 09:50:04 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49Fw4W6xgCz1r5Qh;
 Mon,  4 May 2020 09:50:03 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id F_9UJHi4s1bK; Mon,  4 May 2020 09:50:03 +0200 (CEST)
X-Auth-Info: zCP8j9WucMgE0ljkVLi9b0ZsyqeoqFTivgiAMvw7NZx8rvlJXclL55S702m2QlDj
Received: from igel.home (ppp-46-244-166-96.dynamic.mnet-online.de
 [46.244.166.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon,  4 May 2020 09:50:03 +0200 (CEST)
Received: by igel.home (Postfix, from userid 1000)
 id 8BB672C0B3F; Mon,  4 May 2020 09:50:02 +0200 (CEST)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH v2] riscv: force __cpu_up_ variables to put in data section
References: <20200504035448.13893-1-zong.li@sifive.com>
 <CAAhSdy23jzYvZcmXoX_5F1wDenBQ8NpvNpoO41=aBGHoONPCgg@mail.gmail.com>
X-Yow: TAILFINS!!  ...click...
Date: Mon, 04 May 2020 09:50:02 +0200
In-Reply-To: <CAAhSdy23jzYvZcmXoX_5F1wDenBQ8NpvNpoO41=aBGHoONPCgg@mail.gmail.com>
 (Anup Patel's message of "Mon, 4 May 2020 11:55:05 +0530")
Message-ID: <87tv0w3zrp.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.0.91 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_005010_771245_19697F80 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Zong Li <zong.li@sifive.com>,
 Atish Patra <atishp@atishpatra.org>, Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mai 04 2020, Anup Patel wrote:

> Slightly improved text:
>
> This issue happens on random booting of multiple harts, which means
> it will manifest for BBL and OpenSBI v0.6 (or older version). In OpenSBI
> v0.7 (or higher version), we have HSM extension so all the secondary harts
> are brought-up by Linux kernel in an orderly fashion. This means we don't
> this change for OpenSBI v0.7 (or higher version).

  +need

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

