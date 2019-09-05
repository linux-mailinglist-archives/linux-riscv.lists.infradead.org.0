Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB64A9C59
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 09:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ohi03jOTDoj/y2aDa7/Jl4PdnHo0QW366xfG7uOxg8I=; b=LAI0qUmGvB2PRz
	paV94jDiduhh7NDjGfFwETArAySJ1PrGdwPaF2g8MEuvfNr/UY3xv9f4WUlU9VQ9NQVdM/LyvtjYn
	CCnd6MYDpMTv05hsLONxt8ysKPCq6VpoXVDXSA6x/rMms44b84aQikn8nQKXmKcJzlNA+3jUKb6tE
	Bv8iSGjIOLNybRv3g+1r26upHf1iZU8xGEXzfcPrgKOmUEyQ1TIaXnd3vEFdvFqdt3qAU0T3vYNCo
	HVQHiuuDRQX19QmBCdJRLZHtbdLRLldOgwODW4u1UxLgJ3m9AXg7lbjgTjm0iX5rYViTgDvaFbQeu
	alAQHKUHY7fzmst2zGAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mbA-0006t1-Il; Thu, 05 Sep 2019 07:54:32 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5map-0006cV-Mi
 for linux-riscv@lists.infradead.org; Thu, 05 Sep 2019 07:54:13 +0000
Received: by mail-io1-xd43.google.com with SMTP id p12so2683739iog.5
 for <linux-riscv@lists.infradead.org>; Thu, 05 Sep 2019 00:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=XEwhLYvc4QUR6wvAGjdkKm4IcG5eE3iFZQx/tTNYViw=;
 b=f9GOGijbalzUu0CJL+Gr/ytsBHHkUCfxTJmxJ3N0hokbi/y34zaAwN8d3+He+KXQJk
 vPQGMyBlLIshOD8UDGxbQoiISxNE7iad2N9MzEaID2bMkcZk56AsrarO4g8u9ZxQmMub
 5okbyjjEuNbRUTvEedp2vCHE+lHojS9mSeprf5ZthfKCTQ5i4VlADp5qcX7ZmKVIdp9r
 w1Yp+/Cm7yfpEmkscIAkjQzEIuWEIQKdU18utJA6BcgPyfOtM1oQFD6rOGng01yTcbPd
 zT+bMKGeV7XyKScy6noh7dFr61O1cfwNW17yzfJzRVBYMX8UDAfP8tiOh/WCoC46od+P
 HQfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=XEwhLYvc4QUR6wvAGjdkKm4IcG5eE3iFZQx/tTNYViw=;
 b=sDYcWsPBPXlHQodIp0xLA9nVv3SPjhT96MoQ0nK8bpt8+0Gv5c4w+hU09Ky8uFDJ0C
 eo6yp4Wp+cHfKkdgaj8w31DwWs8tX0zJtFomLalFZyLlR3rOEG8TaP3nZEnW+7DCJAtp
 rofp8cnPVdiuwZ3grtDEpsuBXcw3lTEn6Y6oY+ik7hFi6aRD6rNNvOFarez41+J64i7l
 a7af+vwA5XKeoR2n+9CmOk4j8ZJAknGLuN0xFoHs9236LF8JM13Wq6NjurPg9dV6O7Eh
 A1xoWcgjVLt9wO93BcehgbTZiw6h5dnTCwMgmxqDstYa4rqWGj3RfWbaRvtcm1sUfeZS
 7QQA==
X-Gm-Message-State: APjAAAXphHOZ/kV2k2ul2bKW6xvfv7juUbIfx/0H6fUB45pKQVh/tKu0
 sF2keFbDcOoGoOvtCW+wuKV67w==
X-Google-Smtp-Source: APXvYqzhSbbGP9r0GEa00JWqwYlWyFKnvo7aDMeQ+g/vQTEPBv3G0gV8TBzguYR+mq6CgCtkF0/VpA==
X-Received: by 2002:a6b:c9d7:: with SMTP id z206mr2564361iof.172.1567670050705; 
 Thu, 05 Sep 2019 00:54:10 -0700 (PDT)
Received: from localhost ([2601:8c4:0:9294:cb6f:4cf:b239:2fee])
 by smtp.gmail.com with ESMTPSA id m67sm2549041iof.21.2019.09.05.00.54.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 00:54:10 -0700 (PDT)
Date: Thu, 5 Sep 2019 00:54:08 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Mao Han <han_mao@c-sky.com>
Subject: Re: [PATCH V7 1/2] riscv: Add support for perf registers sampling
In-Reply-To: <49c2c29459afc59130b036eba1b1fd5155572355.1567653632.git.han_mao@c-sky.com>
Message-ID: <alpine.DEB.2.21.9999.1909050053100.27305@viisi.sifive.com>
References: <cover.1567653632.git.han_mao@c-sky.com>
 <49c2c29459afc59130b036eba1b1fd5155572355.1567653632.git.han_mao@c-sky.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_005411_943341_4536C6EE 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-csky@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 Greentime Hu <green.hu@gmail.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 5 Sep 2019, Mao Han wrote:

> This patch implements the perf registers sampling and validation API
> for riscv arch. The valid registers and their register ID are defined in
> perf_regs.h. Perf tool can backtrace in userspace with unwind library
> and the registers/user stack dump support.
> 
> Signed-off-by: Mao Han <han_mao@c-sky.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Greentime Hu <green.hu@gmail.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: linux-riscv <linux-riscv@lists.infradead.org>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Guo Ren <guoren@kernel.org>

Thanks, queued for v5.4-rc1 with Greentime's Tested-by: (since the changes 
from v6 to v7 had no functional impact).

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
