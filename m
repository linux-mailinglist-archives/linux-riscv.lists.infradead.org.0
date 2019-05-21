Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C95257F7
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 21:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzHIg93o2f2y+oMp58QM4THX6dTmh/4W6hl3s7b0ZWM=; b=VxyZuPmho1+01i
	tCMv4tU5+Pmc9J1l7z8I19lvAl63u0rD3Ge+E5F+sjCrPz/7GSRFtOpYIpfUeyoqIkzxIj5hMVDRT
	bLYzGaP4YohQUJ4VLn9q4fTVLvKT4nhzm2oBT+vzNFyt+9YMEr/2EzFjayWQwCFaoRdLc4QJunFCS
	UeRU43hGWnwRwdkDdZ3SDDis5W/yOq0CoCQ5w0hz67MRiGoa8kL9u3rYby+GYTLHxHtQZ7m8+lpLj
	GBE8BP3hrGEcOVQj8vLkTU+Xj140sIIDhEMySEWh1MaGMpjrAHQQW56neJ/qF584f5NLky7HUAMtA
	a/WXYhzIWG2VN3nAUECA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTA1A-00050M-QS; Tue, 21 May 2019 19:01:44 +0000
Received: from mail-it1-x131.google.com ([2607:f8b0:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTA17-0004ze-8g
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 19:01:42 +0000
Received: by mail-it1-x131.google.com with SMTP id h11so6380821itf.5
 for <linux-riscv@lists.infradead.org>; Tue, 21 May 2019 12:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=+12NmtAAbFJaroPAA2lM4Iqx0/EqHN6iwK3Od+LxSqY=;
 b=X2Xgx4vZAiee18RcsPFWU6PrNbYl+0gDe7etynJiXePQV+JuiHLHV3NwBOznyDy3IO
 nDIDDwzlAMl9n/4G6mz0ZMaCHrdo78bxeZA4bMTGV5WcAzAT60z5396dHWDgusZQtnO0
 jfMwt52+vpBEKgcXMpkMf1zV8UpGmUX9OsrcwiIll+QWlzNPj73ryFqS8czXvE+9SsBq
 6Sq+BVvDywZph0icJ9QHClQH4D9kLu7u6J/Zb6AFCZy9DoK0lOu6+XqWBCW9Mww+1sUx
 1wrahw1u2fRs+ac7ja9kSZpshBvrE/kD+RuzMB1aSW18aCyKxOUb6zVuDNfuKJzR4u2d
 /MhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=+12NmtAAbFJaroPAA2lM4Iqx0/EqHN6iwK3Od+LxSqY=;
 b=Sh4WGjTfwqhi4IGTn7RdghSvO4ciWwjVMC36Wf3ryqHk/M+fgvKJtwRvsBmTh2LIvx
 B8a5g4hsIGejooSFGM9TmTpH/A5gdBqygNiBkKH2XfXBJt3uWwwLqmIrbVYtQDoMghtJ
 v+9rYlLCKRs7VE01LteRArl3Hd3S/2zg/U0BNHEWmF4NQqoNyxKaxmV2H7t2y3h0b9GG
 C44wjjuE0+pLQF20eXEYG5WukOt6OvnEjn6apbBPWrtz/0RqP419tMdh+UnjZYoA0+Gr
 n2pYPOVQ9p9aj2TpQ37FnCvLhxNTxK1a9NCsdmJP3rS6qovm96wKkVD/XNvi25rKqXrq
 2P7w==
X-Gm-Message-State: APjAAAUl/lGy8n6wYurJJopds/cz23XeyO8Fp6N3bc7B8wIM57Sk1FPO
 1uZNn+Xrv92LsnAUVN+DSMEzEw==
X-Google-Smtp-Source: APXvYqxL7Gz556HpzxmOWn6WIJ1XtT46LhMiKgs9kG6zAcRPMf+HSFGPzAUbbB7pzw8kD+bRYrDs4g==
X-Received: by 2002:a24:910b:: with SMTP id i11mr5636355ite.76.1558465299744; 
 Tue, 21 May 2019 12:01:39 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 z14sm6980089ioh.48.2019.05.21.12.01.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 12:01:39 -0700 (PDT)
Date: Tue, 21 May 2019 12:01:37 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Wesley Terpstra <wesley@sifive.com>
Subject: Re: [PATCH] riscv: include generic support for MSI irqdomains
In-Reply-To: <CAMgXwTic9WWjVviEdvh2+0+LB1va--+7zJOt7C2YxsB=hu72WA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1905211200560.24268@viisi.sifive.com>
References: <20190520182528.10627-1-paul.walmsley@sifive.com>
 <20190521063551.GA5959@infradead.org>
 <alpine.DEB.2.21.9999.1905210110220.24268@viisi.sifive.com>
 <CAMgXwTic9WWjVviEdvh2+0+LB1va--+7zJOt7C2YxsB=hu72WA@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_120141_364273_3638D05A 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:131 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christoph Hellwig <hch@infradead.org>, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul@pwsan.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 21 May 2019, Wesley Terpstra wrote:

> Signed.

Thanks, will repost with that and add the PCI folks also

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
