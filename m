Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BD8164DB4
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 19:32:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Zsy3GxB+66CVc/vx4LiXi35WQxqvxY+l91XqEeGwYUw=; b=rALlbL0EBl6Yj2
	IdgT0flNHQ/zWKonDbkiTp6zyAfCC22qL7LvPXp+h/PPyGbENB0QL3b0nX3E4vyatapwGD96oJ0fB
	dkExBZ40EtmH9iWNYMlWInh0STzlMIEBV/EJQc2hJONRi3qNVqQ8dT1haIfJhom5P+QLUQ1P2PBLp
	0Oggm4TrrOBY5IHPEO1O/GxyG+0swpoCCBzovC+lMYeFqKp7OBiA3so9nFsEi7akSvGyY9V8k+qyV
	FGbrzFWNnqT4ofLUIFtOBd2TeTWK5kbOrYvVy2NvkqVeQunTrLF3VncOEksS8XroqVHn7j02PzMDY
	9V8sGxoztYYO1mIjxXoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4U9P-0002qF-Cj; Wed, 19 Feb 2020 18:32:47 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4U9L-0002pn-St
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 18:32:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id p11so405083plq.10
 for <linux-riscv@lists.infradead.org>; Wed, 19 Feb 2020 10:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=Zsy3GxB+66CVc/vx4LiXi35WQxqvxY+l91XqEeGwYUw=;
 b=QddrMY4qRfk1RRazg9/BWgbPBySeiWRYGOoWz8GJ3jbjYmXuN5Co2aDyB4hXsd9mib
 J+Ak9POiPGKqg1lykhlpJkLa4yflZoMboARJR7Nn7MBqD5ppTNDVR7rEuygeT3CB2CG7
 P9Q5HuKlIUJrG7OVLyBvq0uCUybC+q0/88RD5gxE+uOgn2JJhE0wkZIazUUeDCgl0eNy
 CBhG5UiNKsGTUpBrao/cxKtW7i58WznWM9en/uYSHQdTKY3d1M8X26EMKlIIGa43kYMZ
 Hpua5hUP/z4pc4Ti6q8Y6mJMMOEAzrKZjx7GVou/gXqP8kB+Rnk4ReshBbOokidozeBa
 WOBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=Zsy3GxB+66CVc/vx4LiXi35WQxqvxY+l91XqEeGwYUw=;
 b=MM91Z8dxt2iFtIC30wdAKRu0MhnNYIrfVrGTJ+mNOTBIMwOHPcYlLypBMHeZXlN4JV
 4z2ayts9udsCYgRreavzDsl2gkR6b5NDkjucBOkW5dLgfuwzLfIMv8yjkl3a9hSiawWa
 aEEvPzdpn5H1MRbpiF+sgkXIzkr5v5lw2isjeXH1e72xL0jep4WC8EVzqoArdnTrHIRI
 uWGounL0gQ1vwQkVgiH8Dz7gkp5oLCpiVlszpKliuyBfL5eG+n+PTYTQaisJGBaEU1Ag
 +dassj+3Hn2dxmZflsULk9dmt4UomlD7O+GLWLkO6BIMUsvogZAzDQusFQds3rHdgz8o
 zUVA==
X-Gm-Message-State: APjAAAWCVyuO08m5+eb6BmtdwfRUJpgbQalrLt+uOuHHE2c3eIVmYWWX
 kAmvjofj1N84qHd8uRPCdVeibevgCYs=
X-Google-Smtp-Source: APXvYqzulXsw3UlVhiplBD1GdPTnDGGic6pvut7GIvmG+bTOeF0gNQJSHeeaXMiprkrwIZnZS4FZHg==
X-Received: by 2002:a17:90a:8902:: with SMTP id
 u2mr10441768pjn.79.1582137160695; 
 Wed, 19 Feb 2020 10:32:40 -0800 (PST)
Received: from localhost ([2620:15c:2d1:206:90e1:f7be:ea84:7f6a])
 by smtp.gmail.com with ESMTPSA id a9sm560956pjk.1.2020.02.19.10.32.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 10:32:40 -0800 (PST)
Date: Wed, 19 Feb 2020 10:32:40 -0800 (PST)
X-Google-Original-Date: Wed, 19 Feb 2020 10:32:38 PST (-0800)
Subject: Re: [PATCH] RISC-V: Stop putting .sbss in .sdata
In-Reply-To: <CANXhq0qWejBztV7AzF9_ZkcqzHiuyvN2deedepgkVe-gWaf-xQ@mail.gmail.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-569a09c8-26ad-4c62-9819-6cd1a2b5d8e7@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_103243_960871_A4D4BE0C 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: android-kernel-team@google.com, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 01:26:09 PST (-0800), zong.li@sifive.com wrote:
> On Wed, Feb 19, 2020 at 5:26 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>>
>> From: Palmer Dabbelt <palmerdabbelt@google.com>
>>
>> I don't know why we were doing this, as it's been there since the beginning.
>> After d841f729e655 ("riscv: force hart_lottery to put in .sdata section") my
>> guess would be that it made the kernel boot and we forgot to fix it more
>> cleanly.
>>
>> The default .bss segment already contains the .sbss section, so we don't need
>> to do anything additional to ensure the symbols in .sbss continue to work.
>>
>> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
>> ---
>>  arch/riscv/kernel/vmlinux.lds.S | 1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
>> index 1e0193ded420..a8fb52a00295 100644
>> --- a/arch/riscv/kernel/vmlinux.lds.S
>> +++ b/arch/riscv/kernel/vmlinux.lds.S
>> @@ -64,7 +64,6 @@ SECTIONS
>>                 *(.sdata*)
>>                 /* End of data section */
>>                 _edata = .;
>> -               *(.sbss*)
>>         }
>>
>>         BSS_SECTION(PAGE_SIZE, PAGE_SIZE, 0)
>> --
>> 2.25.0.265.gbab2e86ba0-goog
>>
>
> I had given a quick test for that. It works on RV32 and RV64.
>
> Tested-by: Zong Li <zong.li@sifive.com>

Thanks!

