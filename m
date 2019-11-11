Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03D4F7970
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 18:05:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8zw74244kDJwZn+yAq/PpvJ7iD3lzL7a7ZLVH/RfNs=; b=ex9Czz7wlGEL5F
	c2RkSnKdTpsa/4ZsB0IOvWQuj/MNN2irmDgotacEVoKwtI5vT8RnBGZuFD2NCM1QDWKLlqxH+FKcq
	dIXhDLTZXYDRK89LFxxenWnzVnDYHCXeovUmiq7vTLQCk0Xri9GB4EHceQVPojYlve0xcSpAGrLi1
	v0coSI8qBvn0uYozfHs19zn7g6wT+JANN3dxLNYqZoxe/KB/LzIUQ74yRbeZ3r9tZb+ba2zY726ID
	OasQ1iMwXlC/89onCYSQHLzPGxfAWcFN5OkOt0JZ39KHPqo2ZKdJRqpkLjyL71xs8DHAErEjMumjO
	PP262cbi4n9JdVIHTMyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUD8E-0008Ur-9G; Mon, 11 Nov 2019 17:05:38 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUD8A-0008UF-So
 for linux-riscv@lists.infradead.org; Mon, 11 Nov 2019 17:05:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8E132B28D;
 Mon, 11 Nov 2019 17:05:33 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
References: <20191111133421.14390-1-anup.patel@wdc.com>
 <mvmv9rqcxpq.fsf@suse.de>
 <MN2PR04MB60616625B9BEFF634FA680728D740@MN2PR04MB6061.namprd04.prod.outlook.com>
 <mvm5zjqcwlr.fsf@suse.de>
 <MN2PR04MB60611FB55CDCF6AB5930C73A8D740@MN2PR04MB6061.namprd04.prod.outlook.com>
 <mvm1ruecpyv.fsf@suse.de>
 <CAEn-LTrL_Dtka6So3Pj=G+BV2a-UoHxGGLLDF4dqAG68AnH_5g@mail.gmail.com>
X-Yow: Did I do an INCORRECT THING??
Date: Mon, 11 Nov 2019 18:05:33 +0100
In-Reply-To: <CAEn-LTrL_Dtka6So3Pj=G+BV2a-UoHxGGLLDF4dqAG68AnH_5g@mail.gmail.com>
 (David Abdurachmanov's message of "Mon, 11 Nov 2019 19:01:23 +0200")
Message-ID: <mvmwoc6baxu.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_090535_075606_09CA6D1F 
X-CRM114-Status: GOOD (  13.46  )
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
Cc: Anup Patel <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Nov 11 2019, David Abdurachmanov wrote:

> On Mon, Nov 11, 2019 at 6:55 PM Andreas Schwab <schwab@suse.de> wrote:
>>
>> On Nov 11 2019, Anup Patel wrote:
>>
>> >> -----Original Message-----
>> >> From: Andreas Schwab <schwab@suse.de>
>> >> Sent: Monday, November 11, 2019 8:02 PM
>> >> To: Anup Patel <Anup.Patel@wdc.com>
>> >> Cc: Palmer Dabbelt <palmer@dabbelt.com>; Paul Walmsley
>> >> <paul.walmsley@sifive.com>; Atish Patra <Atish.Patra@wdc.com>; Alistair
>> >> Francis <Alistair.Francis@wdc.com>; Christoph Hellwig <hch@lst.de>; Anup
>> >> Patel <anup@brainfault.org>; linux-riscv@lists.infradead.org; linux-
>> >> kernel@vger.kernel.org
>> >> Subject: Re: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
>> >>
>> >> On Nov 11 2019, Anup Patel wrote:
>> >>
>> >> >> -----Original Message-----
>> >> >> From: Andreas Schwab <schwab@suse.de>
>> >> >> Sent: Monday, November 11, 2019 7:38 PM
>> >> >> To: Anup Patel <Anup.Patel@wdc.com>
>> >> >> Cc: Palmer Dabbelt <palmer@sifive.com>; Paul Walmsley
>> >> >> <paul.walmsley@sifive.com>; Atish Patra <Atish.Patra@wdc.com>;
>> >> >> Alistair Francis <Alistair.Francis@wdc.com>; Christoph Hellwig
>> >> >> <hch@lst.de>; Anup Patel <anup@brainfault.org>;
>> >> >> linux-riscv@lists.infradead.org; linux- kernel@vger.kernel.org
>> >> >> Subject: Re: [PATCH] RISC-V: Enable SYSCON reboot and poweroff
>> >> >> drivers
>> >> >>
>> >> >> On Nov 11 2019, Anup Patel wrote:
>> >> >>
>> >> >> > We can use SYSCON reboot and poweroff drivers for the SiFive test
>> >> >> > device found on QEMU virt machine and SiFive SOCs.
>> >> >>
>> >> >> I don't see any syscon-reboot compatible in the device tree.
>> >> >
>> >> > I have sent patch to QEMU as well for generating SYSCON DT nodes.
>> >>
>> >> What about the kernel DT?
>> >
>> > For QEMU virt machine, the DT is generated by QEMU at runtime
>> > so we don't need an explicit DT file in Linux sources.
>>
>> What about the HiFiveU?
>
> Unleashed uses gpio-restart which depends on gpio driver (not upstreamed and
> not posted for review on mailing list). I have that working on my build.

I do have that, too.  But I wonder about the "SiFive SOCs" reference
above.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
