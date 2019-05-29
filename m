Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1449F2D9F4
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 12:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvdTglZzj29CGgeiWlItu3V8poKd7ZzdPDVJ2ATDTTM=; b=DEokV6YnEHKhBr
	4tDyuwmkMHHzdPI21thL5irVoTJUwfcEVgJBFtGXdlVSuQPyU98b7k3BIEn38vplfqrcXmYMVGiAT
	Tf17nz2UbNaexR2j2APtBP12rxsgd1vhTPQQY49E2MxQTsLnnFHjzuENcZJRZkUyfvzhv9TuU3cg4
	yP7FVv/Qx2w3pyOGGLbGPq+iPTfT0b8kdUxO0HPaVQpm54/gfBeOSQ8JJMu69TEx7CUdQt1UpwmZt
	MOBevJjIKG6b2IbGqejpt8mrbh5C7wOhS3lFtJk8aDJk95bVlPPsXWWMgP9Z2CPaadyDK74UDhijS
	CYoR4O51ivwnv7JfKXqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvS0-00057h-TP; Wed, 29 May 2019 10:04:52 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvRw-00056w-Rd
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 10:04:51 +0000
Received: by mail-wr1-x441.google.com with SMTP id l2so1278984wrb.9
 for <linux-riscv@lists.infradead.org>; Wed, 29 May 2019 03:04:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=EvRHuK8mz2NMxeqe94A9v/S9Mu1WuY4pJlAWP/0yaCU=;
 b=V+CQc1Uawwh7H+49Sc63wT1Z0PeCzOUvhYN0X5juPv/tDrEQfn4viRo7A4giKds037
 FIxwvb6pfHvuaKYB1ogomOuc7GBDUpF1aRTl9Rh6vI3G9TmNKj2wgM1zJQJGQ3YzyxoF
 ROlkb4JfXfnuzYHTXcBmxNyoZRJLBBJGSKJ1fkHk0OOM/VhyxPH1BYYyAUXfpsCFaUaO
 KXcbZuY+nm3NoAJL7VFoswDkS6gCkQaEGHlsfdn0/y8lN7p7PSNgCFeQbaBSc94dMMxW
 MYywOeqF6i0VEmmzgHxhri84uURb59HPScaQVwezeuZbVu7e51kRAGGqHVlYr/u8dOtH
 pt5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=EvRHuK8mz2NMxeqe94A9v/S9Mu1WuY4pJlAWP/0yaCU=;
 b=NXRx8AYsmp6TILqhDpp6dSRY/VkuGaXZ407SB4SGxu/puzQX4u7Vn6pUHXzHc8w1Ar
 hL/XjgpAHk8mi6poEqImED5emqTQFSKpLQN6SPSxNq30sP6fjJgx4dV4HPT/26i5Iyq+
 APzJfYTjDCoV4VVTo1iZr1ubGJoV6cQsm8QaPjQMbfQI7lv8XlE31nCpd8HWjvlllSlO
 jKiqqMX+ue3qOR6mjvAzavSzEqxTTE2gBpuSEt6mPCR7SD03giBr5Yd4+cR2HcJOTid5
 RqqScwbzdgdA6zMGCo5+elgO0q1bEG9l3MNpWD/SoFlbgCfn3Kc5Lj+c57rQgmNgiPu2
 POMw==
X-Gm-Message-State: APjAAAUkLKuHHeqMwlW+irOziUBKGTRUEes7xaviLqDCBMjuiGAPCBpF
 hTEkJ1ihLJXd7Q3FXB8h0H2jLQ==
X-Google-Smtp-Source: APXvYqwg+x1MOMT+WmH/pBDUnkvqMWetCPalCNp+MayuVaC4AMRbrLW0huzcYAbqvXQX+V0Si1OQrQ==
X-Received: by 2002:a05:6000:12:: with SMTP id
 h18mr4283978wrx.29.1559124281873; 
 Wed, 29 May 2019 03:04:41 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id f197sm5965858wme.39.2019.05.29.03.04.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 03:04:41 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Atish Patra <atish.patra@wdc.com>, Karsten Merker <merker@debian.org>
Subject: Re: Testing the recent RISC-V DT patchsets
In-Reply-To: <081611ea-a0d3-b0c9-3e08-8946513f2174@wdc.com>
References: <alpine.DEB.2.21.9999.1904221705170.18377@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1905280105110.20842@viisi.sifive.com>
 <86o93mpqbx.fsf@baylibre.com>
 <20190528153542.jfkkwycyc3vu6hld@excalibur.cnev.de>
 <081611ea-a0d3-b0c9-3e08-8946513f2174@wdc.com>
Date: Wed, 29 May 2019 12:04:39 +0200
Message-ID: <86woi94lvs.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_030448_896502_31EB96DA 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed 29 May 2019 at 00:50, Atish Patra <atish.patra@wdc.com> wrote:

> On 5/28/19 8:36 AM, Karsten Merker wrote:
>> On Tue, May 28, 2019 at 05:10:42PM +0200, Loys Ollivier wrote:
>>> On Tue 28 May 2019 at 01:32, Paul Walmsley <paul.walmsley@sifive.com> wrote:
>>>
>>>> An update for those testing RISC-V patches: here's a new branch of
>>>> riscv-pk/bbl that doesn't try to read or modify the DT data at all, which
>>>> should be useful until U-Boot settles down.
>> [...]
>>>> Here is an Linux kernel branch with updated DT data that can be booted
>>>> with the above bootloader:
>>>>
>>>>     https://github.com/sifive/riscv-linux/tree/dev/paulw/dts-v5.2-rc1-experimental
>>>>
>>>> A sample boot log follows, using a 'defconfig' build from that branch.
>>>
>>> Thanks Paul, I can confirm that it works.
>>>
>>> Something is still unclear to myself.
>>> Using FSBL + riscv-pk/bbl the linux kernel + device tree boots.
>>> Neither FSBL nor riscv-pk/bbl are modifying the DT.
>>>
>>> Using FSBL + OpenSBI + U-Boot the same kernel + device tree hangs on
>>> running /init.
>>>
>>> Would you have any pointer on what riscv-pk does that OpenSBI/U-boot doesn't ?
>>> Or maybe it is the other way around - OpenSBI/U-boot does something that
>>> extra that should not happen.
>> 
>> Hello,
>> 
>> I don't know which version of OpenSBI you are using, but there is
>> a problem with the combination of kernel 5.2-rc1 and OpenSBI
>> versions before commit
>> 
>>    https://github.com/riscv/opensbi/commit/4e2cd478208531c47343290f15b577d40c82649c
>> 
>> that can result in a hang on executing init, so in case you
>> should be using an older OpenSBI build that might be the source
>> of the problem that you are experiencing.
>> 
>> Regards,
>> Karsten
>> 
>
> I verified the updated DT with upstream kernel for the boot flow OpenSBI 
> + U-Boot + Linux or OpenSBI + Linux.
>
> OpenSBI should be compiled for sifive platform with following additional 
> argument
>
> FW_PAYLOAD_FDT_PATH=<linux kernel 
> source>/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dtb
>
> FYI: It will only work when kernel is given a payload to U-Boot/OpenSBI 
> directly.
>

Hum, I am surprised by this statement.
I was able to verify the latest DT patch serie from Paul with:
OpenSBI + U-Boot + Linux & DT.

Following the OpenSBI documentation [0] with U-Boot payload:
FW_PAYLOAD_PATH=<u-boot_build_dir>/u-boot.bin

I get an U-Boot prompt and then I can just load the linux kernel and
device tree from the network.

[0]: https://github.com/riscv/opensbi/blob/master/docs/platform/sifive_fu540.md#building-sifive-fu540-platform

> Network booting is still not working as the clock driver probe doesn't 
> happen because of the updated DT.
>
> -- 
> Regards,
> Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
