Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCABCB232
	for <lists+linux-riscv@lfdr.de>; Fri,  4 Oct 2019 01:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXpQcWla2Jf324eVnPt8/YcbeFZnVP2UKUdHBq0xsLM=; b=FwVvFKWyX13vsV
	R1+w6VGPW1DhaVwaqc4puvK5HToOdNQ4R2iqnGNMGNtCUKsC8DmzuXVOqY9pOtQiG46WPQXTAEccv
	RpXdoQZTvCcWZIQ+BT+us5pq7NQJpoo5EOUBXbNSK6v20eOoLDyte4+JkLS4eIlr2d4WtvAM0qMXz
	2bXWMa4Qtgl//wq4+glnOkKwf9bNmRNLT1OoFszngg2u36gGfAonTc+nsVOArg9c5Y7i/kuxXnIfx
	ZEo/yS7ggo+5x19dtG5QBPiGIpG/vPdpFFdOC28aEfXC8hWJTM1T9mZqWv35GspJewbYkVw0bae/v
	36pE3T4QAaf486dZjdpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGALL-0001bI-Dx; Thu, 03 Oct 2019 23:17:07 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGALI-0001ao-19
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 23:17:05 +0000
Received: by mail-io1-xd44.google.com with SMTP id h144so9448911iof.7
 for <linux-riscv@lists.infradead.org>; Thu, 03 Oct 2019 16:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=c/c4iyYzo+wbrsNbC+tYuxx+LZ1Q4XvIcGkd3sDICbk=;
 b=OrG87iM0XgLKlOhduxApzC+FPUDHcNtHa1CsA6eeE3lBW1nHjtCKZSELa/6IzCqN82
 nxN6D/qqAvr/xMAia5sSSBj0cpbJAcM3I4Oa7xzzgN/TWhMyCvXSDWMXIJjQO2fnExfu
 XzbkG6s/9H20Zt9HG80mJKOIWuEtOwmtTIhXGYRjtr/VP+udrX0Nk/tiJkvyIf6uXYyJ
 7HS5exHOQIy3muunJVeJ/p3SbSDqpnvEl03LhbsHaDlZ7IdB2el8Z3+pqRlX8XfI5YAT
 /qQHiS4QqHvo0hvTF+Qc+1+ynxBdeAapRSwQXynEwjWtnZm5OmU6u8TZl+BF5XEuSEfg
 Bs7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=c/c4iyYzo+wbrsNbC+tYuxx+LZ1Q4XvIcGkd3sDICbk=;
 b=AhNrOlalLFH9lODO+P5HkzZ5yYoaouqj5NNe+/9mjboH1xlZ2DdwrEBHf7mfNz/dmF
 l6AvKChsVPTXek8LPlzLRgfNOgMKOzQCML2BpzSNeqYSwFMtMbTvUG71aOcdZRDeVmXn
 8kL5Htl60yINCn7DKtIhnyW/Ps4qzmfSzX+eyxLb852SskfOS+aTghs8aPthjljXm2qD
 j63tGfIv3i6r+diH4RdMswArOcCQjQd1BgJ5lTDuINf4yIiJSo1Hjw1uNPE9/qmWPaql
 pFh2zazDNpyB49zg2caSzn/K4r/kW1c3a4mezuHVdrxZC1S9+Vc3wPArkQkyd6ydkcSd
 N9Fw==
X-Gm-Message-State: APjAAAWej0i6x+nYoeyn6laU+xZebpfMBwxtnlTT6DRmluju8GAVmSih
 PPUqYptu9vJEzh5YQjtrfOWJYBS+PPE=
X-Google-Smtp-Source: APXvYqx/ZNBdZ82CtCcRzOxhoWJQiTrNEgb7y6B7c63Ry+zpFFl4wxw74O7gwfDm/KZHCv3dhpzohA==
X-Received: by 2002:a92:3405:: with SMTP id b5mr12628762ila.273.1570144621260; 
 Thu, 03 Oct 2019 16:17:01 -0700 (PDT)
Received: from [192.168.1.196] ([216.160.37.230])
 by smtp.gmail.com with ESMTPSA id q18sm1403798ion.3.2019.10.03.16.17.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 03 Oct 2019 16:17:00 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Fail to bring hart online on HiFive Unleashed
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <73a9ba9fd6c29075209a61660137fb4b899f7ff2.camel@wdc.com>
Date: Thu, 3 Oct 2019 18:16:59 -0500
Message-Id: <5B6E4372-FA11-4B41-9CDD-D9C31F4C80BB@sifive.com>
References: <20191003200735.GA26760@aurel32.net>
 <73a9ba9fd6c29075209a61660137fb4b899f7ff2.camel@wdc.com>
To: "aurelien@aurel32.net" <aurelien@aurel32.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_161704_083104_D20C265F 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Does the same problem occur if you write this file to an SDcard and set the switches to load the (legacy) machine-mode HiFive u-boot as FSBL?

https://github.com/sifive/freedom-u-sdk/releases/download/hifiveu-2.0-alpha-2/hifive-unleashed-a00-2019-03-22.gpt

> On Oct 3, 2019, at 6:13 PM, Atish Patra <Atish.Patra@wdc.com> wrote:
> 
> On Thu, 2019-10-03 at 22:07 +0200, Aurelien Jarno wrote:
>> Hi all,
>> 
>> I have just upgraded the bootloaders and kernel on an HiFive
>> Unleashed
>> board to:
>> - OpenSBI v0.4-50-g30f09fb 
>> - U-Boot 2019.10-rc4
>> - Linux v5.3.2
>> 
>> Most of the time, the kernel only brings online 3 of the 4 RV64GC
>> harts:
>>> # getconf _NPROCESSORS_CONF
>>> 4
>>> # getconf _NPROCESSORS_ONLN
>>> 3
>> 
>> This can also be seen in /proc/cpuinfo:
>> 
>>> processor       : 0
>>> hart            : 1
>>> isa             : rv64imafdc
>>> mmu             : sv39
>>> uarch           : sifive,u54-mc
>>> 
>>> processor       : 1
>>> hart            : 2
>>> isa             : rv64imafdc
>>> mmu             : sv39
>>> uarch           : sifive,u54-mc
>>> 
>>> processor       : 3
>>> hart            : 4
>>> isa             : rv64imafdc
>>> mmu             : sv39
>>> uarch           : sifive,u54-mc
>> 
>> When it happens, the kernel logs contain:
>> 
>>> [    0.049851] smp: Bringing up secondary CPUs ...
>>> [    1.082530] CPU2: failed to come online
>>> [    1.086267] smp: Brought up 1 node, 3 CPUs
>> 
> 
> The log is aligned with the outcome. CPU2 never came up within 1 second
> for some reason. How often do you see this ?
> 
> I tried couple of times and did not see this issue. Here is the log
> 
> OpenSBI v0.4-50-g30f09fbfd1ec (Oct  3 2019 14:03:20)
> U-Boot 2019.10-rc4-00023-g72efcc8f00fc (Oct 03 2019 - 14:03:12 -0700)
> Linux version 5.4.0-rc1-00004-gecd4522e3e09
> 
> Here is the bootlog.
> https://paste.fedoraproject.org/paste/-gr1Zeg4~UBs~bqIPraJwA
> 
> If this issue is reliably reproducible, here are some areas to dbeug.
> 
> 1. __cpu_up() in smpboot.c has a 1sec timeout for each cpu to come up.
> 
> You can increase that time just to make sure that it's not a hardware
> issue.
> 
> or
> 
> 2. Put some debug prints in U-boot/OpenSBI to confirm that all 4 harts
> did  come up at each layer. 
> 
> You can also just use kernel image directly FW_PAYLOAD_PATH in OpenSBI
> to avoid U-boot. That may give a clue if it is a U-boot issue or not.
> 
>> I have also seen the issue with CPU1 but not with CPU3 and CPU4
>> (might
>> be a statistical effect).
>> 
>> Any idea what could be the issue?
>> 
> 
> 
>> Thanks,
>> Aurelien
>> 
> 
> -- 
> Regards,
> Atish
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
