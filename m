Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B3A742DD
	for <lists+linux-riscv@lfdr.de>; Thu, 25 Jul 2019 03:25:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Exzmtu7ped+ymVUAqksX9d1eoCuG1lPsnKdCejEXkVA=; b=BwDIDCt9wb6x6snhror5aq2GO
	NXr33AIgTQiBqgEvLGG8Lhb9sHbWHIEUq5EVl5uDNGgsXlEzChXtERKu0NpDOWP1iF0d1bBgc6KyZ
	BxEC2zCVCazolnoGiMGVWT2Z/8Lm3y/++dqIhHHRvkzPCgkSGyt2s1/rUabl1ualfK4cfPyhUWCrw
	8n6g1l7S1x4AdL7SbpCWKsjPl80NWgzpSObQ+TZyD5keZjEPrRrINzRUTgdhi8YDrmT1my+IkH1RJ
	95MxzAHekmRs8uRKRiLB8+yjiHP+4xJHVuZ7qkLOwP4+7z8EUNum/a2MI/vod/iOTAJfAGMR+J858
	izYyfLQ+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqSV8-0007Db-Jl; Thu, 25 Jul 2019 01:24:59 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqSUg-00070v-89; Thu, 25 Jul 2019 01:24:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564017870; x=1595553870;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=p+jTfu4cIazD5eixTiPopv5has0130QcUTKO/yKoUes=;
 b=mEyy7VVhzwtkA9+0C+6hlbHXsG7x3CUnIZy+ZJumyjgAXwtIswN7mJdl
 jDAgT5XUeVCeTn/9NftaV2LWN8sXgzrrW2LP4kueNyZ4IDI1p4FWgkRPH
 2d8yOI6fMyiX+vsfsoJ+cbEGg2H/SiRxFapZ9lUQho54HJK97nbgsTgiy
 cFmZc/HW8+Cqngwy5xUIH2ZWzsKGBJfDxUJiwujL3srL+vMk2aAC0BSfX
 laKd5ul9xADThxLtUdw6VUyFvdi0t91Gi+UIElgYa37Z8w9mESDH9ZB6q
 U2Q6ZGcf8i+E7OPcNEH5cGt47XR3MBCoiIYIbTYlw2rfl0un/MT+wKuMI Q==;
IronPort-SDR: fqBvd+9hf8yTa+Z2TvDA5JgsLnjtwcKYJZnSS5tYQA914Bl4oCZVoMUkQ3g2UPG89JxhgFo6a2
 /vF0+zclONdyutf7vVUn/5w0nne2VGa0IH2YqyDfPNmeqgPvVh/mNY03mZVMLlXvYCSZBrjJAv
 gLmaxWAur9mwF7MZXLAR8glpoQGDFAyGaUm26ttV63kAYLWmjSmYmbIEVb6VnSo3lRWZSCzIWT
 sOplgskktMhfIE55M+mmcyBKPFFgaIgVbMz9zr4u0AKA/2+q7wfyq7WlKufrjaegVck/TRj8wl
 IvQ=
X-IronPort-AV: E=Sophos;i="5.64,304,1559491200"; d="scan'208";a="118681831"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 25 Jul 2019 09:24:26 +0800
IronPort-SDR: te6sJyns275o4+/eg1wdrIys7xiTSkDK6ChDUOU1WqLp6QzuPv8XtVzgXfB/ha/xamJ6Y23deF
 0aOTJ/oXitM9Q+BFF/0DqFnTawaQHE9QPzKBt8PmiNmtQpFE9myu9GdGoFYr6/52sxiNPEd+Pp
 Q5nq0J4UvCWPHve0kSvpIjpGAVW5RMYs+dJOto/5t0lokzADfI/jRNKH4zek/fb1Ywarcso+cL
 kDV37ftOGiJYaWsbxToR6jDnyJJUQd6ulKrqIB8bE8qhjkhAKft+CMSvJVr8ChxZt3dPYEaJJO
 qpujwd0y1o6KjJfDT11UJMZI
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 24 Jul 2019 18:22:37 -0700
IronPort-SDR: V40xfE9gili+44NnP3tPlPZ2UZfyLw5G2k1ffUp3o9aNa94g6a0EQQzDNiFNIxamCt67BvNlyN
 ZGvjsXZempGW2czFlejGBR0PiLWWQ4yDXhugkuGPBv9/uk+J7VPYqwZAAbktNZCMUFnKT+3hn3
 /sfby85RS1py25X+dAL4O6KmG/qeVSPieHigi0K0Y1S1wB2ZAnHQykLenqJL5RQjpChOQpUYrV
 pes/KNeXeL28/On8K5wifkMeeQnVLcCOOZmbtYE8vB3ccGhofWq+D1uFHJxa1UXS+9DbKpCq5c
 O0I=
Received: from r6220.sdcorp.global.sandisk.com (HELO [192.168.1.2])
 ([10.196.157.143])
 by uls-op-cesaip02.wdc.com with ESMTP; 24 Jul 2019 18:24:23 -0700
Subject: Re: [PATCH v8 0/7] Unify CPU topology across ARM & RISC-V
To: Paul Walmsley <paul.walmsley@sifive.com>
References: <20190627195302.28300-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1907121012050.2267@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1907221224170.23563@viisi.sifive.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <ea88d4f4-eff8-adba-3135-0d480f501d48@wdc.com>
Date: Wed, 24 Jul 2019 18:24:22 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1907221224170.23563@viisi.sifive.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_182430_411349_5D905E00 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Anup Patel <anup@brainfault.org>, Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 7/22/19 12:25 PM, Paul Walmsley wrote:
> On Fri, 12 Jul 2019, Paul Walmsley wrote:
> 
>> On Thu, 27 Jun 2019, Atish Patra wrote:
>>
>>> The cpu-map DT entry in ARM can describe the CPU topology in much better
>>> way compared to other existing approaches. RISC-V can easily adopt this
>>> binding to represent its own CPU topology. Thus, both cpu-map DT
>>> binding and topology parsing code can be moved to a common location so
>>> that RISC-V or any other architecture can leverage that.
>>> different config for the architectures that do not support them.
>>
>> Once v5.3-rc1 is released, let's plan to get these patches rebased and
>> reposted and into linux-next as soon as possible.
> 
> These CPU topology patches are now queued for v5.4-rc1.  They should enter
> linux-next shortly.
> 
> 
> - Paul
> 

Thanks!!

-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
