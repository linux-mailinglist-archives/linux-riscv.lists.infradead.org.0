Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDC417E1AF
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 14:53:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfZu5RD0EkiRIzyfyoJo3cq7qDSD4XfrrbjoyTCBf4U=; b=dK8flmOKOAbqNc
	u5BfB8T4icVInuq47TclER/cQo/CV5gAXAx5e3zHMLBx9gib+pZ9XodJhCqov1Y542/c1nlBhcEMM
	GvwtCjDCK87gTh9/rSBwzAZoVUEa1e0/+uu8UXMkB9XZ/ugQUdxUOr1Ke+39Xs31kfkGzRAQc/Jz8
	ntXz6cN2Qu5Lg8U89tYYTZWB4qOLXWf9S41SAyk52pq7dPQ0tFdwd263F4891jN0v4dNYJE6YtUIO
	awaijgB0p8+L5eMkZF4JL5z0AomBiXyqQR/AyKGThx1J9ZDaYLOPfUTzpmPpkcRC5kYmHk4E1jx4o
	43ybEHwR590c7+4b6L8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBIpz-0007Xd-DY; Mon, 09 Mar 2020 13:52:55 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBIpw-0007X8-NQ
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 13:52:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id v4so11262054wrs.8
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 06:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PfZu5RD0EkiRIzyfyoJo3cq7qDSD4XfrrbjoyTCBf4U=;
 b=bskPpamXDjt6HermMBgC7riSz1e6tedwQyK04CGOiWZ9CavV1oDf8Yvo+ixJagBjsO
 vbGjtJ33rJ2PpBPjMruYDD6MM6t/ph3vYbww5KZDzbsz2FiOdskBi1ESKuCr/XKw5chi
 ewp5cPwop40x0qJ4s4ojUyX8g0dPFta/q6ZFFEfHIny41ZIHe9up72XbU4RGhM7KNv5p
 OKHoAlhSAf4oMcbACZh4gEExYMey+nqEhBTNum+A2UghGiFIhkuO/WSW3ZgReXYjFuWC
 crWSNFaqh/Oz8ZvCo2QMhgQeJfJdHl4Qj+pL7CSL9dXcY8t88julw7HokOACfWIocxM8
 fyhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PfZu5RD0EkiRIzyfyoJo3cq7qDSD4XfrrbjoyTCBf4U=;
 b=KDFfnufnwlbxq8o7x09zt+E5AJef3MjCfv93bjVq0ruebJ7lyT+neyCCn+XaxH49ag
 1UW1cVWDP0+pETerOBcL1wLqMOZ7zUhzqXaCVek4nUTjUsgOfynv0XosU0zMy/wSNJTe
 9EgfcFJjyMEuuALp7SSwFmdjXkXuYa0N+2UrUb/9dKgMukEghMp8RLrSS1FWTD0eesWB
 e2smM3hl1483HR+IVneAlk4UFc5uDXdLwv+W3fr9XjdT1X4VZoshfu0UC7yu8iTWLTOz
 o4bPYUjbtPLvSe1WFWLd08mLmw2yLLCa2H2uS5/FV/kvm8mx3wsvofbU9bxq4XIEFPAY
 Mrlg==
X-Gm-Message-State: ANhLgQ1KkBPZvMwI8r62OiZE5UUTPfZDyO3036HeXOHcTzItHytD+dbl
 wnFoMiaPwvIBSeLergCFngCCCajZ+IE=
X-Google-Smtp-Source: ADFU+vsAKabuIQXOSE7o3xg7D222ujCIl4Yh+N8hP4yA3DJUzAA3XMts4YjRQ/egv8e3+zEZfzmuxg==
X-Received: by 2002:a5d:4b82:: with SMTP id b2mr21302349wrt.102.1583761971175; 
 Mon, 09 Mar 2020 06:52:51 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id v20sm9940563wrv.17.2020.03.09.06.52.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Mar 2020 06:52:50 -0700 (PDT)
Subject: Re: [PATCH] nvmem: jz4780-efuse: fix build warnings on ARCH=x86_64 or
 riscv
To: "H. Nikolaus Schaller" <hns@goldelico.com>,
 PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
References: <79e1dec195d287001515600b1dae0bcaa33fbf65.1583522277.git.hns@goldelico.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <e444754a-3bd3-d46f-d2f9-188fb2cc6f0e@linaro.org>
Date: Mon, 9 Mar 2020 13:52:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <79e1dec195d287001515600b1dae0bcaa33fbf65.1583522277.git.hns@goldelico.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_065252_802948_B75FDADA 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, kbuild test robot <lkp@intel.com>,
 malat@debian.org, linux-kernel@vger.kernel.org, paul@crapouillou.net,
 linux-riscv@lists.infradead.org, letux-kernel@openphoenux.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 06/03/2020 19:17, H. Nikolaus Schaller wrote:
> kbuild-robot did find a type error in the min(a, b)
> function used by this driver if built for x86_64 or riscv.
> 
> Althought it is very unlikely that this driver is built
> for those platforms it could be used as a template
> for something else and therefore should be correct.
> 
> The problem is that we implicitly cast a size_t to
> unsigned int inside the implementation of the min() function.
> 
> Since size_t may differ on different compilers and
> plaforms there may be warnings or not.
> 
> So let's use only size_t variables on all platforms.
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Cc: srinivas.kandagatla@linaro.org
> Cc: prasannatsmkumar@gmail.com
> Cc: malat@debian.org
> Cc: paul@crapouillou.net
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> ---
>   drivers/nvmem/jz4780-efuse.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
> 

Applied thanks,
srini

