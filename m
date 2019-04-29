Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CABBDE3A
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Apr 2019 10:45:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hOWNnns7pdsw0et+zeYIHm/4fxlH8xSOMnbGb6ub074=; b=e7ilkylY855Vn4
	hhCBSym1OtK9y/UFtj2jvQhVxV/N5MoFku7+GwQ/n+QU/QzOaOr+RPW3qBZOGtsHud4uJgZMVWSd7
	ge91n3oBli+ElJOLQm0+dOWSV9ozScYbfjIngo1y7taKbniS/DOLz4xNBUndMTM6qIMJJLsbJ+Miy
	Haz4kEiCy6UDsL1bSgJM3X4pk9lqMvEbRd7ZDYlo3l9AEFZT83jSw8K+db+AsJaWtgwf0gIEb5Jdc
	ouRGuDdsASoQBRxIwLQ97CBoQ3t1NEgfhLtMVIkRyhACYJ0jZ/zH4kS4rUhM4u5hc4iKdIjmq5CPR
	THkRKBJqyRnCuk4njfeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1v9-0004OH-1W; Mon, 29 Apr 2019 08:45:55 +0000
Received: from smtp2200-217.mail.aliyun.com ([121.197.200.217])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1v5-0004Nx-9h
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 08:45:53 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.2451035|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.145498-0.00694801-0.847554; FP=0|0|0|0|0|-1|-1|-1;
 HT=e01a16368; MF=han_mao@c-sky.com; NM=1; PH=DS; RN=4; RT=4; SR=0;
 TI=SMTPD_---.ERaVMaQ_1556527548; 
Received: from localhost(mailfrom:han_mao@c-sky.com
 fp:SMTPD_---.ERaVMaQ_1556527548)
 by smtp.aliyun-inc.com(10.147.41.137);
 Mon, 29 Apr 2019 16:45:49 +0800
Date: Mon, 29 Apr 2019 16:45:00 +0800
From: Mao Han <han_mao@c-sky.com>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH 3/3] riscv: Add support for libdw
Message-ID: <20190429084441.GC22718@vmh-VirtualBox>
References: <99f15d5c74727c31bf8d08b6cf948754e3e09943.1554961908.git.han_mao@c-sky.com>
 <mhng-a74d03ae-cfb4-4e42-8950-f90816975291@palmer-si-x1e>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mhng-a74d03ae-cfb4-4e42-8950-f90816975291@palmer-si-x1e>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_014551_919845_E63E8F02 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-riscv@lists.infradead.org, guoren@kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Apr 25, 2019 at 02:11:04PM -0700, Palmer Dabbelt wrote:
> On Thu, 11 Apr 2019 00:53:50 PDT (-0700), han_mao@c-sky.com wrote:
> >This patch add support for DWARF register mappings and libdw registers
> >initialization, which is used by perf callchain analyzing when
> >--call-graph=dwarf is given.
> 
> Is there any way to make this the only backtracer?  It's the only one that's
> likely to be useful on RISC-V without recompiling everything with
> -fno-omit-frame-pointer, which has a major performance hit.
>

Frame pointer is the default record mode in record_callchain_opt.
Some generic modification seems required to change this, default to
use dwarf if riscv and show corresponding message in --help.

Thanks,
Mao Han 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
