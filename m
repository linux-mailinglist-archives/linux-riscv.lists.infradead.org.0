Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E7D2B8BF
	for <lists+linux-riscv@lfdr.de>; Mon, 27 May 2019 18:12:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arFdBgShSrf+j75hHhVlExNJKvcqh68h1qytyINPWxQ=; b=n5HUKVUodBSiv+
	D/r4XinwqMRBeJTyHvTWS5GdUbVxZYl+h+7+mg7TUfqVSeNpCv+LnkUjZOdp2eZUYEY6LvKV52/SU
	prMLzQ0htFeEQHPGJVkwmLZ24FXiNWtIFxLYJks50hcEQ8me5CvzeyxZJza3fuhwPQESElyOJMAZO
	GkVVpHJlH2LCo06UYwGPV3iwIceQm/AK+1flDfc96s7n15zma1VcrKx8BVcwKbdd/wx/PJHmvEPxa
	2c8nBz2FNrsFk2erFa7oXV8hi8FUp20akGqGpgU5v0SK+KL4PzrT7SBAgHzOj2HrQq8zgjv4F1/pw
	PuNnpmpxyV6PxXVInT9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVIF2-0006tZ-6Z; Mon, 27 May 2019 16:12:52 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVIEx-0006ss-Rp
 for linux-riscv@lists.infradead.org; Mon, 27 May 2019 16:12:49 +0000
Received: by mail-wm1-x344.google.com with SMTP id v19so284255wmh.0
 for <linux-riscv@lists.infradead.org>; Mon, 27 May 2019 09:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version;
 bh=5mEyxNiTxG7QHCldnzuLItg2WJUiLZE71Nb5mEMikHM=;
 b=Qdfu7lKbLkMVRKD6Gk7EDaRAOh0aHQeWqxjDWZvknbEkiHbKsi7MUieqe1q8sGforH
 it5X5CBTkk6qo5HNbES2BPpxyemCI6jyrLk3xnUgbwWjJoh/Ow0M4+2IUTCZAGqEAbQg
 D0qw0M8yy/tOMTfXLx4t+bVdXWkasDV0e1OK68nTpcw+pdg9fQzg8WsSX9LDU1q4YbYp
 XGdy2qR8AMJSV8pK7CtZCuNJ4/EuRlo04Ka/dr8MNMdo1w/xpqZtNZjyObGnL/bJnBku
 wRBWl2UF2uz7+wSaRjYdJPxBfPcfgsTQ1KJJ5tL5gE/AyiKI7Ifo582sH7jV988+ie2c
 xTIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version;
 bh=5mEyxNiTxG7QHCldnzuLItg2WJUiLZE71Nb5mEMikHM=;
 b=H8rk9xZpbnyurRShJKSx4QB8x2JEQcE1iO0BS9e45212BhlgIkjt16MV/Mc+gw0HIJ
 Q5V+WMjzhR4E35HJ8WC/H74j1TbKA4BR5OF/bcRBaP4d6zCuD1xY/NeXOIjVQa7S8TJA
 BGE79ZS+s3nYb7pZOpzNtKAKFWMpLCzNC6aBCSLrqXI/llurM98SDpMqM6wvSwAdTJdB
 pnRGHdqgnNsiYASvs6pi3VdtMRVe3MfrUPpsGC0ntoLlwI3mAhAMR5pZOMk0UazyMnnf
 LtSmvENEkO0bqcDi4vsWaNUES0MDHprLQQcMf1YPk4ToPBsC8vPF5FM76GDHkBswWAOE
 WgqA==
X-Gm-Message-State: APjAAAWpfNru9Ntc4klnI/S5cGVsxcQEfIdw5b3t6FNIANVxibArdRun
 CeVJSJoaWNXVM/og1zQH9yZwR1yUvkKVTw==
X-Google-Smtp-Source: APXvYqxdhEw7utvMO4VRArF33KJ19jG5BwvZVlrj9QcVk6+kzn3PBObGHvAKrpcEoNeAF24NJ1LU5g==
X-Received: by 2002:a05:600c:228c:: with SMTP id
 12mr14844150wmf.91.1558973565870; 
 Mon, 27 May 2019 09:12:45 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id j123sm21766217wmb.32.2019.05.27.09.12.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 09:12:45 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v5 0/2] tty: serial: add DT bindings and serial driver for
 the SiFive FU540 UART
References: <20190413020111.23400-1-paul.walmsley@sifive.com>
 <7hmukmew5j.fsf@baylibre.com>
 <883f3d5f-9b04-1435-30d3-2b48ab7eb76d@wdc.com>
Date: Mon, 27 May 2019 18:12:43 +0200
In-Reply-To: <883f3d5f-9b04-1435-30d3-2b48ab7eb76d@wdc.com> (Atish Patra's
 message of "Thu, 18 Apr 2019 18:04:34 -0700")
Message-ID: <86sgszq3k4.fsf@baylibre.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_091247_962422_F63A9D8F 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kevin Hilman <khilman@baylibre.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu 18 Apr 2019 at 18:04, Atish Patra <atish.patra@wdc.com> wrote:

> On 4/18/19 4:22 PM, Kevin Hilman wrote:
>> Hi Paul,
>>
>> Paul Walmsley <paul.walmsley@sifive.com> writes:
>>
>>> This series adds a serial driver, with console support, for the
>>> UART IP block present on the SiFive FU540 SoC.  The programming
>>> model is straightforward, but unique.
>>>
>>> Boot-tested on a SiFive FU540 HiFive-U board, using BBL and the
>>> open-source FSBL (with appropriate patches to the DT data).
>>>
>>> This fifth version fixes a bug in the set_termios handler,
>>> found by Andreas Schwab <schwab@suse.de>.
>>>
>>> The patches in this series can also be found, with the PRCI patches,
>>> DT patches, and DT prerequisite patch, at:
>>>
>>> https://github.com/sifive/riscv-linux/tree/dev/paulw/serial-v5.1-rc4
>>
>> I tried this branch, and it doesn't boot on my unleashed board.
>>
>> Here's the boot log when I pass the DT built from your branch via
>> u-boot: https://termbin.com/rfp3.
>>
>
> Unfortunately, that won't work. The current DT modifications by OpenSBI.
>
> 1. Change hart status to "masked" from "okay".
> 2. M-mode interrupt masking in PLIC node.
> 3. Add a chosen node for serial access in U-Boot.
>
> You can ignore 3 for your use case. However, if you pass a dtb built from source
> code, that will have hart0 enabled and M-mode interrupts enabled in DT.

Atish,
I'm trying to get the kernel boot with the current linux kernel DT from
Paul's patch series [0].

Could you point me to some documentation on 2. ?
Or do you know of a way to disable M-mode interrupts from U-boot ?

[0]: https://lore.kernel.org/patchwork/project/lkml/list/?series=390077

Thanks,
Loys

>
> Not sure if we should do these DT modifications in U-Boot as well.
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
