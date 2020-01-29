Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF6214CCE3
	for <lists+linux-riscv@lfdr.de>; Wed, 29 Jan 2020 16:00:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=izVbuVQfKjxlDiWpU3YFz1uZ6NyAhFYTQIwypULO3vE=; b=nSPZQm+TYCy3ZG
	oGgFloSmXnwMPJlSBdoovcvl0qx4WNwmjr45c5JkX5hVifZ+Uj1E9HNT7eJxf+Ybj37r6qfAX8ZPt
	SsJErBlAHKSz01ZdMQtC7ptTpDAT+ReM4SmRgBWQrF+Ap5J5TURuYUAGHB1V9hqlFEtvdUpvFoXkb
	+CBl6FGmT7+a5yzqxXy2NN88mjo/oet+WbjeBkV7ReytHy+DkaizG2NxDFjlGRIAX/oMTQYL0JFx9
	Uvgmj6QFK6BsJ8GDfOlm8Ik7XT42uGgj7qvGxoPSFjtfc5REZ3toxnpehG63lppuhi6NMRFQPnGzt
	cIXKq3wat2l6j+m/vzwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwopR-0000jR-PP; Wed, 29 Jan 2020 15:00:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwopO-0000iQ-AU
 for linux-riscv@lists.infradead.org; Wed, 29 Jan 2020 15:00:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id g17so20533292wro.2
 for <linux-riscv@lists.infradead.org>; Wed, 29 Jan 2020 07:00:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=izVbuVQfKjxlDiWpU3YFz1uZ6NyAhFYTQIwypULO3vE=;
 b=jAOCJDy7b+3jbarX0d8qXICDRSDylbN3qzBXUI8v23ZGpTQVbn6DyL60cgqzP/sHRD
 jHENIlTIZmK/3bANbEVuZjD519GTMC7EdKqOK7/jBPh2VK3lPyXLv4at1yR9S1YqsXnT
 s9MmDg/bDWEr9Zg6zBfgON7qHLaoDf9T47ZNmGVLM3RaGDcPBDKQ3Nwu59ZUI36uLYly
 CIP5g0MNuiIg9rOTNdLkXEkXddsnxaQf7gdgfZ+wqDFpFB2HCwfkL0axKLMHPpOAnaK8
 mzU1EecrudoQCDTi6RNmkSVmWI2/fXACqKsi+oMSTLYvKJfGWHfympKi6x9fFzhJ38Id
 AdZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=izVbuVQfKjxlDiWpU3YFz1uZ6NyAhFYTQIwypULO3vE=;
 b=GU7vuZESiO4xXKLSBQdGguNcxy8drkbVTW8NKQoq9/RLVahjaGow+6paed6kzbAlTt
 rRJZiHf7VQz0SBNivVKHT4tL6JJp891NvT3aa+yK2iqRNNPhVRU6nIWE72dh3vMQd563
 bIzY5kxiw2++WPhIsKxunutbiPFVXSUMupNkXVmJjSl7CG1ew5/RCAIRKuy2wzABUb9+
 lff2AkI11Zfg5+wOeBVQ0d88B3hzsj8M4FA3b3HSBMdn89dB78r6UuDP+kJgdoYDxPGr
 dUI+Llb477eV71oY73uf03pMohueBX58Wdl9Ej1WvjLTcZkk+c4llyJoqHYjxB66h5Qx
 fOuA==
X-Gm-Message-State: APjAAAWijmyaOglfZtpGPCpSHrswir16ReR5gWCHEoPHON7wBLPDK30I
 jzXtHG/0Uy/TgYefG+gqPLKv7g==
X-Google-Smtp-Source: APXvYqwb5lM57o59SrwocyymNrtibeNLU9G8DkQ5nCCDlcJxe1cbV84jEra110J+DHdFaEONXPuKYA==
X-Received: by 2002:adf:dc8d:: with SMTP id r13mr37387337wrj.357.1580310020461; 
 Wed, 29 Jan 2020 07:00:20 -0800 (PST)
Received: from localhost ([2a00:79e0:d:11:1da2:3fd4:a302:4fff])
 by smtp.gmail.com with ESMTPSA id 18sm2492646wmf.1.2020.01.29.07.00.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 07:00:19 -0800 (PST)
Date: Wed, 29 Jan 2020 07:00:19 -0800 (PST)
X-Google-Original-Date: Wed, 29 Jan 2020 15:00:18 GMT (+0000)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH v4 0/6] GPIO & Hierarchy IRQ support for HiFive Unleashed
To: maz@kernel.org
In-Reply-To: <8dcb52c94eb5a585f6cf052c18571805@kernel.org>
References: <8dcb52c94eb5a585f6cf052c18571805@kernel.org>
 <1575976274-13487-1-git-send-email-yash.shah@sifive.com>
Message-ID: <mhng-cb360722-bdb6-4cf7-9fa7-1d92f6b6bbfa@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_070026_365105_01B1FDF3 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 jason@lakedaemon.net, Atish Patra <Atish.Patra@wdc.com>,
 sachin.ghadi@sifive.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com, yash.shah@sifive.com,
 robh+dt@kernel.org, sagar.kadam@sifive.com, linux-gpio@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 bmeng.cn@gmail.com, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 20 Jan 2020 09:09:51 GMT (+0000), maz@kernel.org wrote:
> On 2019-12-10 12:11, Yash Shah wrote:
>> This patch series adds GPIO drivers, DT documentation and DT nodes for
>> HiFive Unleashed board. The gpio patches are mostly based on Wesley's
>> patch.
>> The patchset also adds hierarchy irq domain support as it is required
>> by this
>> gpio driver. It also includes the irqdomain patch to introduce
>> irq_domain_translate_onecell() and irq-nvic driver patch to use this
>> newly
>> introduced function.
>>
>> This patchset is based on Linux 5.4-rc6 and tested on HiFive Unleashed
>> board
>>
>> Changes:
>> v4 vs v3:
>> - Rename the DT yaml document to more standard naming
>> (sifive,gpio.yaml)
>> - Drop "clock-names" property from yaml document
>> - Add "minItems" to "interrupts" node in yaml
>>
>> v3 vs v2:
>> - Include patch for irq-nvic driver to use irq_domain_translate_onecell
>> - Remove unnecessary inclusion of header files
>> - Use a single prefix for all symbols in this driver
>> - Rename the "enabled" field of struct sifive_gpio to "irq_state"
>> - Remove unused variables and locking from probe()
>> - Other minor changes
>>
>> v2 vs v1:
>> - Add patch to introduce irq_domain_translate_onecell() and use it in
>>   the sifive PLIC driver
>> - Drop the usage of own locks, instead use internal bgpio_locks
>> - Consistently use regmap for register access throughout the gpio code
>> - Convert the GPIO DT documentation into a json schema
>> - Other minor changes based upon feedback received on v1
>>
>> v1 vs RFC:
>> Incorporated below changes as suggested by Linus Walleij on RFC version
>> of this
>> patchset[0]
>> - Dropped PWM patches as they are already merged.
>> - Include "GPIO_GENERIC" and "REGMAP_MMIO" in Kconfig select option
>> - Remove unwanted inclusion of header files
>> - Use regmap MMIO instead of customised sifive_assign_bit()
>> - Use GPIOLIB_GENERIC and bgpio_init() to set up the accessors
>> - Use hierarchical irqdomain
>>
>> [0]
>> https://lore.kernel.org/linux-riscv/20181010123519.RVexDppaPFpIWl7QU_hpP8tc5qqWPJgeuLYn0FaGbeQ@z/
>>
>> Yash Shah (6):
>>   genirq: introduce irq_domain_translate_onecell
>>   irqchip: nvic: Use irq_domain_translate_onecell instead of custom
>> func
>>   irqchip: sifive: Support hierarchy irq domain
>>   gpio: sifive: Add DT documentation for SiFive GPIO
>>   gpio: sifive: Add GPIO driver for SiFive SoCs
>>   riscv: dts: Add DT support for SiFive FU540 GPIO driver
>
> I've queued the first 5 patches. The last one should go via the
> corresponding platform tree.

Thanks, I'd missed this one.

>
> Thanks,
>
>          M.

