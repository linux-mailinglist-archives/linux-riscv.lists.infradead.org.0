Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45915EB24
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Apr 2019 21:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k7EPvCUFebpE73E462L+x8Yl3V2FswzpwiMkIxaXclU=; b=o1HQueFF/AYfDgddYWyAJf7eq
	HMG8Jj3Ifeex934iRKzan7XyEYMq6D4KJuFrgmv46nroQMDCmIjh2qiatwK6c0VAAabp2cVgUZdZF
	RyNb68zFTYLYn+DI7U3lyRlhzYsu+BNF0ootV6VCm5I89ZAya2H6lv4cclZ5+V4DoJbLlPaQwdR6A
	8pLr1q503aaR0jmX21IfgvnsBthAeFTK0EQIuz08QZ8YMN8P5L+HNE7quRS9sElRTFDMTbBLikkH0
	weS8+FKPU+4OPdh0zHRRl9TbwLDW/YUtjSQEMvbJSy5lqa0wotytxrDboB9xKoorn35G5QHLWrf5b
	UVJg7xWRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLCIZ-000266-PI; Mon, 29 Apr 2019 19:50:47 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLCIV-00025U-TP
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 19:50:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556567479; x=1588103479;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=QU8C5FHUHbs8SsOZ9YN/PcURVaJONHThVrfdV6R+ucY=;
 b=m3D0218ZTtFcXnMdXrpVL0WToFimWu8Nc67oiKzBZfVpdWSo13W6Ybh5
 uFaddXhWC7p1D1213GVX3XqfnMD62XPCHhyQTVtNPKWlUaKnScdB/+VBe
 C5qqA4bsx3HStbvhpwJ+PNqMtZoF+ffGYIS/bNh05i9Bv7729LWQbrhjv
 pheT8e72RDfUrmMXpTDJ8d7a+HBAmKzk7p9S8vLsjSwWtChVndfkbAivz
 Yq+Y6z1z1pxMLG42GlM5bzp2Feqsy08XTdTh8wfInXNxRKiABuSZG75Oa
 59FY2ZJxqkiTOZ3SRbn9+Og6mrTV+HyQqbYQUbQwjgD2VjO29i89oalW3 Q==;
X-IronPort-AV: E=Sophos;i="5.60,410,1549900800"; d="scan'208";a="206289177"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Apr 2019 03:51:18 +0800
IronPort-SDR: WtDWfQ+d5TmxYtt+3jMRRZp1IQEiG4MOsWN56nI9+SOO8AKWZdmSrePo69zOfrfUhOI1ONhug4
 5hTDuLwwgWFRlMoG0ktzdNqtudeskjyRwV5sryHIUFlj6oslSFau3JJXvV0MkDBVqFtKC8A4Fq
 mY/QXHqdOEtkuSG70+hESVtQM5o6fdCN7zCLXM1cYRBTewZtZ2PE/3Yq/GgfxR5stTyZVsA7P4
 24WrqLqGOYMd9T5PE57KOUmyN9r6nmZQHJQQHBH1y93PEZS0sSwxAs5cHkLgKuEYa7hxLC3jOd
 7LjCmq+21KPi9uq5eddKxDm1
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 29 Apr 2019 12:29:13 -0700
IronPort-SDR: WIxNxlwXkZwhe2QTYR5CqZl7GDzPmRfIWXE/ne+n3USGxuqMC4yTQEqYiI1wvhGqWpdqTmR9lF
 qxn1e/QdsndD3NjWgiOsdQxPXP24JtrPASI6r2FmbjtNXbnr9Z0mDXhf/sFyhob6m5JQCYeuSU
 oC8jQaHB44mncrYX1GQR53OqA5a+1KBlckRNBZmAbUNz7yEJpBRjHzsSkX90DuI3G/x3dFpGyo
 qqGL9vHo9eIEVcYtHrERbEOXZJtTqbPd6QxV7TUkdXqS0PSLc42vIWgMHO/ldHk84FqWFXFKg3
 WI4=
Received: from c02v91rdhtd5.sdcorp.global.sandisk.com (HELO [10.111.66.167])
 ([10.111.66.167])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Apr 2019 12:50:43 -0700
Subject: Re: [PATCH] tty: Don't force RISCV SBI console as preferred console
To: Anup Patel <anup@brainfault.org>
References: <20190425133435.56065-1-anup.patel@wdc.com>
 <9a8be7ef-e62e-2a93-9170-e3dc70dfb25f@wdc.com>
 <CAAhSdy3z1aDdVZ3dM1bec0z_pNtmfdJ0XukX_0YWwy7Q90G9AA@mail.gmail.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <a886a50b-c9dd-2e10-37c4-98a591b6c89f@wdc.com>
Date: Mon, 29 Apr 2019 12:50:42 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAAhSdy3z1aDdVZ3dM1bec0z_pNtmfdJ0XukX_0YWwy7Q90G9AA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_125043_989347_0CB85FFF 
X-CRM114-Status: GOOD (  21.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Palmer Dabbelt <palmer@sifive.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Jiri Slaby <jslaby@suse.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 4/25/19 11:21 PM, Anup Patel wrote:
> On Fri, Apr 26, 2019 at 10:11 AM Atish Patra <atish.patra@wdc.com> wrote:
>>
>> On 4/25/19 6:35 AM, Anup Patel wrote:
>>> The Linux kernel will auto-disables all boot consoles whenever it
>>> gets a preferred real console.
>>>
>>> Currently on RISC-V systems, if we have a real console which is not
>>> RISCV SBI console then boot consoles (such as earlycon=sbi) are not
>>> auto-disabled when a real console (ttyS0 or ttySIF0) is available.
>>> This results in duplicate prints at boot-time after kernel starts
>>> using real console (i.e. ttyS0 or ttySIF0) if "earlycon=" kernel
>>> parameter was passed by bootloader.
>>>
>>> The reason for above issue is that RISCV SBI console always adds
>>> itself as preferred console which is causing other real consoles
>>> to be not used as preferred console.
>>>
>>
>> Do we even need HVC_SBI console to be enabled by default? Disabling
>> CONFIG_HVC_RISCV_SBI seems to be fine while running in QEMU.
> 
> Actually, HVC_SBI console is useful on boards (such as SiFive Unleashed)
> lacking upstream serial driver. It allows us to boot upstream kernel to prompt
> on such boards with just timer driver (and probably irqchip driver).
> 
> Also, we should be able to use same kernel image on QEMU and SiFive
> Unleashed board so disabling CONFIG_HVC_RISCV_SBI for QEMU is
> a temporary solution.
> 
>>
>> If we don't need it, I suggest we should remove the config option from
>> defconfig in addition to this patch.
> 
> Like mentioned above, HVC_SBI is useful for newer SOCs and boards
> where serial driver is not yet up-streamed.
> 

Ok. Lets keep it then.

> Regards,
> Anup
> 
>>
>> Regards,
>> Atish
>>> Ideally "console=" kernel parameter passed by bootloaders should
>>> be the one selecting a preferred real console.
>>>
>>> This patch fixes above issue by not forcing RISCV SBI console as
>>> preferred console.
>>>
>>> Fixes: afa6b1ccfad5 ("tty: New RISC-V SBI console driver")
>>> Cc: stable@vger.kernel.org
>>> Signed-off-by: Anup Patel <anup.patel@wdc.com>
>>> ---
>>>    drivers/tty/hvc/hvc_riscv_sbi.c | 1 -
>>>    1 file changed, 1 deletion(-)
>>>
>>> diff --git a/drivers/tty/hvc/hvc_riscv_sbi.c b/drivers/tty/hvc/hvc_riscv_sbi.c
>>> index 75155bde2b88..31f53fa77e4a 100644
>>> --- a/drivers/tty/hvc/hvc_riscv_sbi.c
>>> +++ b/drivers/tty/hvc/hvc_riscv_sbi.c
>>> @@ -53,7 +53,6 @@ device_initcall(hvc_sbi_init);
>>>    static int __init hvc_sbi_console_init(void)
>>>    {
>>>        hvc_instantiate(0, 0, &hvc_sbi_ops);
>>> -     add_preferred_console("hvc", 0, NULL);
>>>
>>>        return 0;
>>>    }
>>>
>>
> 

Reviewed-by: Atish Patra <atish.patra@wdc.com>

Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
