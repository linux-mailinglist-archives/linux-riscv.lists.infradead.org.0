Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7D6B2725
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Sep 2019 23:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=BzZPWezrHkbfVJZWx4IflPNUK2xU6ll5WKueiKwy7FQ=; b=YJYpsNo4786rbpzAUUK/MPAQH
	EDmXfUi5odkCceDXE3qES5aWdWLmP4MtckGiB5F/9h4kM0rg3Fmr4QPCzMM2os+izB5XKOU56kgcL
	ppS/vSQBwE3HAgojzzdJTTl1Pf9mPG+k1B/5pOnMESb4zkEt0gx7Fy2RaFcjgU8LSBDu4hKsBgXnx
	hr63/BsFbIcwDrfdd34KmjiG+jGnwJvRLBHCgPWwp687nioz0aOxAXYXMTS2DGvd5CZ74UsbGk2XQ
	PHUrmUN9vExEoEm3DwX5VM2hLWF37jNGMInNeD0vBRtrvATMNG+i5d+b2ItghdOXbgOswtdZaPmp0
	WjF5x/W+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8szz-0004DF-7k; Fri, 13 Sep 2019 21:20:59 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8szv-0004CW-9S
 for linux-riscv@lists.infradead.org; Fri, 13 Sep 2019 21:20:56 +0000
Received: by mail-pf1-f195.google.com with SMTP id q5so18843567pfg.13
 for <linux-riscv@lists.infradead.org>; Fri, 13 Sep 2019 14:20:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=9P/XjVbI97/jTRRG3gmFq66lGI4E5K6bWBMtKJXZDto=;
 b=RMhj7ubSi0En9se6yw21IOzeR678PYaDZxSHx3+ARdPGaXNNeLb/u8nX3b57zTnKuy
 1B1Ub2SEtSUhVK2mlxCFl9ZnCf4jyR31YqvUoRxYaUeJwR5mQh3NCqHgUipYuTUsHwCQ
 0VRogKecaHZSYQE6skxXuOODMEDPT1ExE6HPI1MB/McZ7SACLfMlwC6NWr1pYtGX7JsL
 8TVQzOjjSnVloZ67RYb/wNZYyB2CWlU8xNfcsPFtV3IL8/9JA+iIBTQcEta6JvPB4oJV
 x932wgewz7vpqTOhbTCs8Kfkuq1d+9e12ZJ1JumynyHYjqETcsDwdwdmEXWUoEA5eKPj
 K6Bw==
X-Gm-Message-State: APjAAAVea23FeMM4h7TOym3/G6+fqvi3EZSpw1zOW8VaD/OcNJv94cI3
 AjJbVY/6uMBxUFF2av9mMw+g6Q==
X-Google-Smtp-Source: APXvYqxGX38OpJukmSdJgfGgVppHv0oE3pZZWx0OtjxeuAEjhQlb/mU/6Zxreniznz8l4dOfPg2gHQ==
X-Received: by 2002:a17:90a:37d1:: with SMTP id
 v75mr7640029pjb.33.1568409654241; 
 Fri, 13 Sep 2019 14:20:54 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
 by smtp.gmail.com with ESMTPSA id s73sm2940942pjb.15.2019.09.13.14.20.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 14:20:53 -0700 (PDT)
Date: Fri, 13 Sep 2019 14:20:53 -0700 (PDT)
X-Google-Original-Date: Fri, 13 Sep 2019 14:18:36 PDT (-0700)
Subject: Re: [PATCH] riscv: dts: Add DT support for SiFive FU540 PWM driver
In-Reply-To: <CAJ2_jOGO-isv52rnwRusV7jtyCY_JWYWAj9opN3Zg6ZbZr-8-w@mail.gmail.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: yash.shah@sifive.com
Message-ID: <mhng-c8b87e96-987e-4577-acc2-1e22c9b81b10@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_142055_334104_C7D44C4F 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 linux-kernel@vger.kernel.org, Sachin Ghadi <sachin.ghadi@sifive.com>,
 robh+dt@kernel.org, sagar.kadam@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 bmeng.cn@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 10 Sep 2019 02:52:07 PDT (-0700), yash.shah@sifive.com wrote:
> Hi,
>
> Any comments on this patch?

I don't see "sifive,pwm0" in the DT bindings documentation, and it doesn't 
match our standard way of doing these things (which would have at least 
"sifive,fu540-c000-pwm").

>
> - Yash
>
> On Wed, Aug 21, 2019 at 2:53 PM Yash Shah <yash.shah@sifive.com> wrote:
>>
>> Add the PWM DT node in SiFive FU540 soc-specific DT file.
>> Enable the PWM nodes in HiFive Unleashed board-specific DT file.
>>
>> Signed-off-by: Yash Shah <yash.shah@sifive.com>
>> ---
>>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 19 +++++++++++++++++++
>>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  8 ++++++++
>>  2 files changed, 27 insertions(+)
>>
>> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> index 42b5ec2..bb422db 100644
>> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
>> @@ -230,6 +230,25 @@
>>                         #size-cells = <0>;
>>                         status = "disabled";
>>                 };
>> +               pwm0: pwm@10020000 {
>> +                       compatible = "sifive,pwm0";
>> +                       reg = <0x0 0x10020000 0x0 0x1000>;
>> +                       interrupt-parent = <&plic0>;
>> +                       interrupts = <42 43 44 45>;
>> +                       clocks = <&prci PRCI_CLK_TLCLK>;
>> +                       #pwm-cells = <3>;
>> +                       status = "disabled";
>> +               };
>> +               pwm1: pwm@10021000 {
>> +                       compatible = "sifive,pwm0";
>> +                       reg = <0x0 0x10021000 0x0 0x1000>;
>> +                       interrupt-parent = <&plic0>;
>> +                       interrupts = <46 47 48 49>;
>> +                       reg-names = "control";
>> +                       clocks = <&prci PRCI_CLK_TLCLK>;
>> +                       #pwm-cells = <3>;
>> +                       status = "disabled";
>> +               };
>>
>>         };
>>  };
>> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>> index 93d68cb..104d334 100644
>> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
>> @@ -85,3 +85,11 @@
>>                 reg = <0>;
>>         };
>>  };
>> +
>> +&pwm0 {
>> +       status = "okay";
>> +};
>> +
>> +&pwm1 {
>> +       status = "okay";
>> +};
>> --
>> 1.9.1
>>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
