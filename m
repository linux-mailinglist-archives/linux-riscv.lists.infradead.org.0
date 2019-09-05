Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D57E6A9C5E
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 09:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/9xhwbpxvlbFumIeGcYCFlHra/Cw/AJf7Bu8O93M7c=; b=GdG6pMYXFEAJt4
	JpcmOc4/IStrnMwKSiXepvD7GYEuS0OYQ28EV1amqPoybgMs0teEgAOcfnuQBZcuSnqhi912aYfJA
	rjTlepca+WznknQBBnVgwL7PxTCwJtMaF0ug2oF6fWOUPJdTkRM20owOTCPKG7DqWMHOdVGVRTg3f
	qHTX+gmspRf8s4ScyNHgyKvzrZpH8kv8vsyVxj/zpJSKT8KGkWbbH0I/+R24CwhBKiyM4jEuM7RKx
	Pt6l+9wtm89fPo4bvWFZz/TIFPrv5JriGXDsU1NcduxWWZoaWq/s6ZWmTNyGw6f3A0V1XeTifh78/
	pwjt+nVQwpNO4qHeP9qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mcA-0008FH-Br; Thu, 05 Sep 2019 07:55:34 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5mc6-0008Et-EV
 for linux-riscv@lists.infradead.org; Thu, 05 Sep 2019 07:55:31 +0000
Received: by mail-io1-xd43.google.com with SMTP id d25so2676251iob.6
 for <linux-riscv@lists.infradead.org>; Thu, 05 Sep 2019 00:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=C5c7K1Hw4FjCF2xV5vuGtI/cNoltJZ5oqSBi17hs6i0=;
 b=I2t+igV+hg/20Cs7tSHvQRhOdgxcKrBFnKFMkbgfAOGGLKQ5rD53Fyq8x08c4hM38u
 rQujPpaXuKkVSUOHjfVYjTCq8fMWUZMAxXQfjZ3g6Mpk2o38aAJEKPYW0v9nO4B8WITq
 ki+UPop151pYxHkpNWOg3HyrlfnXCyZ/41la7iMsOo3512dJvfjfLGEHw339fTc2xZ9J
 CLssR4wQHnqV4w26NYHbPTFZ2s2NShfg+5RHYHYKXAug6EZtEtTPSMb1JYElI+BptV2J
 wKT9lhhK0YFtImBGIKPryVgP7cdfdGw5hDLJuYGJvbzjKjXN95cjimp4Cndqiv7HYVMa
 O/Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=C5c7K1Hw4FjCF2xV5vuGtI/cNoltJZ5oqSBi17hs6i0=;
 b=ibvuvN9py/zodqV3P3Y/K/FvfKJQBihxunB+Fi+u0L3JzqR4xGeBEmy9tlUTNAKcbq
 FKGw8Thb4YR6UGThekHsLC2jxJvdEKL/+JwVwPAkTx1q/76Ke84KbbDkfQkJZbhBdOBS
 guNo+Y/oQICxRXGUYAl6krgzpE6Z2zJUx/CH2pEEZnOoh3Krz+cCiLaDAZcTYZw8ad3+
 YWr6HmD+eOiO+hbhYSVoB/hIVRCM8Hpse/wTdaq9V5J7Yccfi4lbqw4rpI9ejrsjUp1Q
 7p9uanDz5HuDUCZAz0MZdRKI8QgPZt08xrF5tfjvKsOTbR/yGNPxZZ9D6ZuGWBy2cqpz
 Lq7g==
X-Gm-Message-State: APjAAAX6z3GdRHaNsNleZGilsm7mw1kr9qI3IygvzL+1sHIByrQQvJEM
 J15pkXSFzexPO8Apva04lq8IBQ==
X-Google-Smtp-Source: APXvYqyFpbub+uXlwt/4a1kSj0KNHkUibFYHOqfSUlNcIlDIps2KWkPgcOc3xfU2wvTsHUeYG7GTrQ==
X-Received: by 2002:a6b:f806:: with SMTP id o6mr271583ioh.213.1567670129077;
 Thu, 05 Sep 2019 00:55:29 -0700 (PDT)
Received: from localhost ([2601:8c4:0:9294:cb6f:4cf:b239:2fee])
 by smtp.gmail.com with ESMTPSA id z20sm1319236iof.38.2019.09.05.00.55.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 00:55:28 -0700 (PDT)
Date: Thu, 5 Sep 2019 00:55:26 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Mao Han <han_mao@c-sky.com>
Subject: Re: [PATCH V7 2/2] riscv: Add support for libdw
In-Reply-To: <e30754638a4eabce6f26ecca9d5292cc7dfa2633.1567653632.git.han_mao@c-sky.com>
Message-ID: <alpine.DEB.2.21.9999.1909050054170.27305@viisi.sifive.com>
References: <cover.1567653632.git.han_mao@c-sky.com>
 <e30754638a4eabce6f26ecca9d5292cc7dfa2633.1567653632.git.han_mao@c-sky.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_005530_490198_449958CD 
X-CRM114-Status: UNSURE (   8.91  )
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

> This patch adds support for DWARF register mappings and libdw registers
> initialization, which is used by perf callchain analyzing when
> --call-graph=dwarf is given.
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
