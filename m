Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9CAF766D
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 15:32:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpmbmnChBEXFxBPbKdU6z/vxnPCrQXB2qdtEc4pJ/5w=; b=O91t2sden2bDRC
	tRMiNyqQ19/oAnIDurekL+OI1jRuoukwlyzVoZ226KTGVk+x04dncZPu9ouTJiK8gnkKZQwFEnILG
	U0J1PpW9h7tBwrx1P7ikIdhfoEUNRSxwswKhlEHjjQ+0WgGaHFNI0NHPAT+3fUPwoiQYhYPuve+00
	NiJarURLT1Ud/uWoVXdS9Riuu6OMuYiITDJGPmkvaIVlCGI/Rp3Uh303s4dM6ed1R1Nd4gzFAmE9a
	B42IotpSHWRnsejTP/zLrJ3AkjtEl3pbEFO5I7862GbE3TV2690W5RbY0RJQ9lkuK6LwLLWOyW7GA
	GsxOESqqg+6opR1zTGhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUAju-00059P-R7; Mon, 11 Nov 2019 14:32:22 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUAjr-00058x-IA
 for linux-riscv@lists.infradead.org; Mon, 11 Nov 2019 14:32:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1CEA7B53B;
 Mon, 11 Nov 2019 14:32:18 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
References: <20191111133421.14390-1-anup.patel@wdc.com>
 <mvmv9rqcxpq.fsf@suse.de>
 <MN2PR04MB60616625B9BEFF634FA680728D740@MN2PR04MB6061.namprd04.prod.outlook.com>
X-Yow: I'm a fuschia bowling ball somewhere in Brittany
Date: Mon, 11 Nov 2019 15:32:16 +0100
In-Reply-To: <MN2PR04MB60616625B9BEFF634FA680728D740@MN2PR04MB6061.namprd04.prod.outlook.com>
 (Anup Patel's message of "Mon, 11 Nov 2019 14:21:17 +0000")
Message-ID: <mvm5zjqcwlr.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_063219_747668_5BA7C573 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
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
Cc: Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Nov 11 2019, Anup Patel wrote:

>> -----Original Message-----
>> From: Andreas Schwab <schwab@suse.de>
>> Sent: Monday, November 11, 2019 7:38 PM
>> To: Anup Patel <Anup.Patel@wdc.com>
>> Cc: Palmer Dabbelt <palmer@sifive.com>; Paul Walmsley
>> <paul.walmsley@sifive.com>; Atish Patra <Atish.Patra@wdc.com>; Alistair
>> Francis <Alistair.Francis@wdc.com>; Christoph Hellwig <hch@lst.de>; Anup
>> Patel <anup@brainfault.org>; linux-riscv@lists.infradead.org; linux-
>> kernel@vger.kernel.org
>> Subject: Re: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
>> 
>> On Nov 11 2019, Anup Patel wrote:
>> 
>> > We can use SYSCON reboot and poweroff drivers for the SiFive test
>> > device found on QEMU virt machine and SiFive SOCs.
>> 
>> I don't see any syscon-reboot compatible in the device tree.
>
> I have sent patch to QEMU as well for generating SYSCON DT nodes.

What about the kernel DT?

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
