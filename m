Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E73295AAD
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 11:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Ow0kUbwMmtjPUarWjMiq34c0DTez6L1E+HPEV8YJxw=; b=SIo4FzxkITPu1j
	KNufOQ26IUV1RNE4MORiNj8OzwSLzNvy+al8LjaJVz6nC2RW7F0yzZHmiKtuZseSz1wtNx64c0q+s
	Mw51q2eU84TGLMZ6b2Y60oTAelwl5V2AVkn8JBjH+A+3f3adI2Dr7ldqgw1h75r2XeG9EZo8fOl44
	Hu3eHdlxkJAM+b1Nuz3IO+uJw0kRgNQeo4wuH+coIjedCztSb/joa1UHFRMCzw9WuLBgjZGrWdBLm
	sjoAmiOxWMKXtpf06WjjDDTeToUHTEscYz5/LheVF78iQnOAz+J7E5HCkEGRUcfvBRiOr2FxetF6b
	6RJMPzc2RXQwrI+rJGDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i009v-0003jg-VP; Tue, 20 Aug 2019 09:10:32 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i009o-0003j5-Ox
 for linux-riscv@lists.infradead.org; Tue, 20 Aug 2019 09:10:26 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id EBB09ADDA;
 Tue, 20 Aug 2019 09:10:22 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH 2/3] macb: Update compatibility string for SiFive
 FU540-C000
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
 <1563534631-15897-2-git-send-email-yash.shah@sifive.com>
 <4075b955-a187-6fd7-a2e6-deb82b5d4fb6@microchip.com>
 <CAJ2_jOEHoh+D76VpAoVq3XnpAZEQxdQtaVX5eiKw5X4r+ypKVw@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908131142150.5033@viisi.sifive.com>
X-Yow: Are we live or on tape?
Date: Tue, 20 Aug 2019 11:10:20 +0200
In-Reply-To: <alpine.DEB.2.21.9999.1908131142150.5033@viisi.sifive.com> (Paul
 Walmsley's message of "Tue, 13 Aug 2019 11:42:49 -0700 (PDT)")
Message-ID: <mvm5zmskxs3.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_021024_960175_4D775314 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, netdev <netdev@vger.kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 Nicolas Ferre <Nicolas.Ferre@microchip.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>, Yash Shah <yash.shah@sifive.com>,
 Rob Herring <robh+dt@kernel.org>,
 Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>, linux-riscv@lists.infradead.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Aug 13 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> Dave, Nicolas,
>
> On Mon, 22 Jul 2019, Yash Shah wrote:
>
>> On Fri, Jul 19, 2019 at 5:36 PM <Nicolas.Ferre@microchip.com> wrote:
>> >
>> > On 19/07/2019 at 13:10, Yash Shah wrote:
>> > > Update the compatibility string for SiFive FU540-C000 as per the new
>> > > string updated in the binding doc.
>> > > Reference: https://lkml.org/lkml/2019/7/17/200
>> >
>> > Maybe referring to lore.kernel.org is better:
>> > https://lore.kernel.org/netdev/CAJ2_jOFEVZQat0Yprg4hem4jRrqkB72FKSeQj4p8P5KA-+rgww@mail.gmail.com/
>> 
>> Sure. Will keep that in mind for future reference.
>> 
>> >
>> > > Signed-off-by: Yash Shah <yash.shah@sifive.com>
>> >
>> > Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
>> 
>> Thanks.
>
> Am assuming you'll pick this up for the -net tree for v5.4-rc1 or earlier.
> If not, please let us know.

This is still missing in v5.4-rc5, which means that networking is broken.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
