Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B502AFB3
	for <lists+linux-riscv@lfdr.de>; Mon, 27 May 2019 10:04:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifKpAWAJBH04HHYg5Ocx9jlqw5+IoSOY4YyClGwDdLQ=; b=FfNQCVp/rd/fsu
	97UhSt++CaIQwZE/maCdMnnOAmTNan6vrZ48E7MNmmk5Nh2GQWtdF5BeYmRJdaPxSvsmEKaeqH8tS
	UdHkiybj1b3xAtHxEAAJyfSZ9DZdb+bsPMAJo9V7VE/4dGlexCw6DxVqG6zAYme2ykk2mrMnUgQD6
	HRB2eTifXtEsRzfn0WcEHWiSKJEZ9iu9NxHf5vkB/KzvKdErvmn5gXHyr6owrm+9Zug2/z5HrtWVg
	9pUDiF1RFxkg4DxRtcxRnSAWFMXs39q/x9o0+9Mg3CXSuf4lM2TlTIOQD+JQQomYaLVQ71E8qYDX9
	TyyVlQ4FsSmO9JfgHb1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVAcf-0002Gy-9J; Mon, 27 May 2019 08:04:45 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVAcc-0002GA-Ap
 for linux-riscv@lists.infradead.org; Mon, 27 May 2019 08:04:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7AE0EAED0;
 Mon, 27 May 2019 08:04:38 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH 0/2] net: macb: Add support for SiFive FU540-C000
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
 <mvmwoihfi9f.fsf@suse.de>
 <CAJ2_jOEr5J7_-81MjUE63OSFKL-p9whEZ_FDBihojXP2wvadVg@mail.gmail.com>
X-Yow: ..  the MYSTERIANS are in here with my CORDUROY SOAP DISH!!
Date: Mon, 27 May 2019 10:04:36 +0200
In-Reply-To: <CAJ2_jOEr5J7_-81MjUE63OSFKL-p9whEZ_FDBihojXP2wvadVg@mail.gmail.com>
 (Yash Shah's message of "Fri, 24 May 2019 10:09:58 +0530")
Message-ID: <mvm36l0fhm3.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_010442_519388_223DEF19 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 netdev@vger.kernel.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com,
 Sachin Ghadi <sachin.ghadi@sifive.com>, robh+dt@kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, ynezz@true.cz,
 linux-riscv@lists.infradead.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mai 24 2019, Yash Shah <yash.shah@sifive.com> wrote:

> Hi Andreas,
>
> On Thu, May 23, 2019 at 6:19 PM Andreas Schwab <schwab@suse.de> wrote:
>>
>> On Mai 23 2019, Yash Shah <yash.shah@sifive.com> wrote:
>>
>> > On FU540, the management IP block is tightly coupled with the Cadence
>> > MACB IP block. It manages many of the boundary signals from the MACB IP
>> > This patchset controls the tx_clk input signal to the MACB IP. It
>> > switches between the local TX clock (125MHz) and PHY TX clocks. This
>> > is necessary to toggle between 1Gb and 100/10Mb speeds.
>>
>> Doesn't work for me:
>>
>> [  365.842801] macb: probe of 10090000.ethernet failed with error -17
>>
>
> Make sure you have applied all the patches needed for testing found at
> dev/yashs/ethernet branch of:

Nope, try reloading the module.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
