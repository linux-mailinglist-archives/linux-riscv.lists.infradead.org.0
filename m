Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACABE7A3F9
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 11:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lfa2iF3oik6eTWR4I1m9ji6fprBcG3iq/3hscHPwZw=; b=JJt9JYJ/kOMGNT
	3V0sdtHWdtg4W8OCbLGw9JCXjHVzqSFHzWQxMvOqvP632FRGDvYMQcY9Vpu9OEN4ko0ErYtkHpN8a
	VNiERTde2DGSfoGtWh3tlN92s+s33R95prkuw6rFutEbd8zx0gGZrCP5evF/nAT8MLN4tHoKN9nqs
	MYcZrLvh+rYrApipoj3DGbUq8jDnOvDArAxoYdgeXfQsrgvMkDnUOLkEk3mwAX+Z7ZUQklRhHxf4Z
	kQghCUyDxkXgSmK6/6K/rl8w3xfsNbPBacxGlOQTG9HHwOxIs/KK1RHsJb22zOU023eq6/hb7EVLw
	dCQRT7FfGMkRrVpiB8TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOMI-00015F-To; Tue, 30 Jul 2019 09:23:51 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOMB-00012C-VJ
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 09:23:45 +0000
Received: by mail-wm1-f67.google.com with SMTP id s15so34591747wmj.3
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 02:23:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mWMZh3wUcWsqPn07oFt7cBOH5RBu0IlIBiCukBD3l9o=;
 b=tQLri5Fub/wQuI/FotDlRIp0LBUjzUpTe0ZaSvsc7UTyNQzuKtl7LK0Xq2rtDYdyyv
 3rqi6N2RB9k5u//slYGz+CmIJHS3tdekm0ppFhrBbcE2tUuJZUEK/pG48pfC/X2CmF6I
 +TVoXzU9r66nC5u0rXIY5lLHgD4koKHqFWeESnd/r9SQYGksuLmKdpRI09/iGgKLbdpn
 BZ1H3M/ROQq4VCc7aRxY6yGAhFPIfSqghubENi42YPoIfu+edqmN52G9UA9G3VZ7w4zj
 bmFULQWTBv9k3VqH1irE4TZuckjgBq3uo9K/1VS6yP900iyMTR10rIUP7DB0MuHfEwOT
 cVvA==
X-Gm-Message-State: APjAAAUC3XzCouQ6+SeTwv7r/ytCxadsbwl2UzIhIgHYRACvCqd+dsas
 7JqvQ/Zc+C/gO2A4Uz8pKZgH4w==
X-Google-Smtp-Source: APXvYqyjkTFE8K19/Ax2T+TuTtN5zUHOBpO/LA8yzScwVqCfBWpuwT+J9Qb8/NNoeIAkuB0HbwVZzQ==
X-Received: by 2002:a7b:cc04:: with SMTP id f4mr40005383wmh.125.1564478622449; 
 Tue, 30 Jul 2019 02:23:42 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:29d3:6123:6d5f:2c04?
 ([2001:b07:6468:f312:29d3:6123:6d5f:2c04])
 by smtp.gmail.com with ESMTPSA id s10sm48654942wrt.49.2019.07.30.02.23.40
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 02:23:41 -0700 (PDT)
Subject: Re: [RFC PATCH 03/16] RISC-V: Add initial skeletal KVM support
To: Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Radim K <rkrcmar@redhat.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-4-anup.patel@wdc.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <309b9fb3-9909-48d6-eabf-88356df4bb3b@redhat.com>
Date: Tue, 30 Jul 2019 11:23:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729115544.17895-4-anup.patel@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_022344_086112_53A61702 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 29/07/19 13:56, Anup Patel wrote:
> +	case KVM_CAP_DEVICE_CTRL:
> +	case KVM_CAP_USER_MEMORY:
> +	case KVM_CAP_SYNC_MMU:

Technically KVM_CAP_SYNC_MMU should only be added after you add MMU
notifiers.

Paolo

> +	case KVM_CAP_DESTROY_MEMORY_REGION_WORKS:
> +	case KVM_CAP_ONE_REG:
> +	case KVM_CAP_READONLY_MEM:
> +	case KVM_CAP_MP_STATE:
> +	case KVM_CAP_IMMEDIATE_EXIT:
> +		r = 1;
> +		break;


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
