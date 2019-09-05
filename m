Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2970A9D63
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 10:44:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0zobp8eTsKzmZKpvkmMrTkL/x/9Gv6ciNVg/LAHOp5c=; b=MDeVacxNPvruQF
	fK9zhgCF0SlOwypimEQxnENdlKonSvOt4IfrPpNZMDLS4P/GMZfEkOU9GCSWfl/YCyccniRNrv4p6
	dLf4FK5UJ686FH+7EuJmgjc6k0aVvJj5yvGhio3fMlz32rhH1ebclb+Z7p6f8waiiNoVy7n2TqnOW
	wQv4RHEDoGVZ2cCxF5x6+u1jvNfivNhyNpuYDgpBFuHj3b+LT0r0zF0REjeMxLCGyMvMS7QPkI/nT
	QLtPrScoI2GEkfTMZYJdTXWq+wQ9bsJuCJx+M7SArvdOBYje1Ta1SQER1mhrYolMxr0H5ZbQGPzqN
	krh4a/chN3g/dTn5f7kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nNU-0003ZW-5q; Thu, 05 Sep 2019 08:44:28 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nNQ-0003YK-CP
 for linux-riscv@lists.infradead.org; Thu, 05 Sep 2019 08:44:25 +0000
Received: by mail-io1-xd44.google.com with SMTP id m11so3044154ioo.0
 for <linux-riscv@lists.infradead.org>; Thu, 05 Sep 2019 01:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=9Tn5FEGULHVpzokMH7fo95l7dem6KS1SswGu0BeTtG0=;
 b=Gb3HALEiWkS6jAiWwiv8DYxQYfw+gIZjOLdXJDHRUNFZ1GRU0BgVPEG6KEnqNESQ+b
 tFXVBoJF7v2d3EYKNRUlqaZsSsbcA8fX9oz5GFao6OlkHifzZ7R3moVj/rH769sV/tVh
 /2mvLk++1B3jeTqfZvsJTiDgmB1VhOcc/C1N8ot+znMuItO+Ox624rFiWDn6FQFJqQvQ
 EgL/nElTi77PwqCwAMolxrF2W08PY7iWDnw28t5dNQiI00xyCfe7qvOPXghQ1824favn
 XHU+4lxWWuC4QqP5SOHv5ETq7S7aBE5Hl3eCatCwLw8sLnUgpLNKyEmrueokSkJv7x3K
 jCbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=9Tn5FEGULHVpzokMH7fo95l7dem6KS1SswGu0BeTtG0=;
 b=RaSmhXr0fttc47Fsh6U6OTrZzjV6HfJpBzaSDQGrK7TdMTDXfYRAz5eOMj1xHvI/BT
 4zeOPJebLuE6WToYr3Huu+iOxk4XPGwSuEakk3FQWTwu1PbibuiURV4RU+4L0vIXW2u2
 23sCIPRBwA2bH44TabmGY7F8Z+LZHtnyr75v6esic7Hai0mTOZnHcZF5EjyU/Ag5uY56
 jhEPDTR8UHNPpVOdwZxMgNx8nUIzZD/9xC3G/gyLeesjKUrMbHNGJDlHvMge4Z9HSsax
 ZFdbuQ2mByxhD2+zKRFn8l62ZpAmqrQe65jJYb7IhtNL1xtyTBt9jPE4995QZk/OYNKU
 6BuA==
X-Gm-Message-State: APjAAAV53L2Hls0WepWlCZMHpBBwQWnwWAY2Hx3ghKjhT+O1ERIT4hGz
 u0FKRBvwKnuNfjuQTAbs+fCZLA==
X-Google-Smtp-Source: APXvYqwXQxbrh9f7gevrIkZEse7f3WoCHoTw5CvfPLWOtms1jZ7cZ+4eJp0jtOHqzHWkd5Rifepq7A==
X-Received: by 2002:a02:3b21:: with SMTP id c33mr2986840jaa.54.1567673063350; 
 Thu, 05 Sep 2019 01:44:23 -0700 (PDT)
Received: from localhost ([2601:8c4:0:9294:cb6f:4cf:b239:2fee])
 by smtp.gmail.com with ESMTPSA id l8sm1024307ioh.85.2019.09.05.01.44.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 01:44:22 -0700 (PDT)
Date: Thu, 5 Sep 2019 01:44:22 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 1/6] riscv: refactor the IPI code
In-Reply-To: <20190821145837.3686-2-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1909050140370.27305@viisi.sifive.com>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-2-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_014424_467485_99ABE0D0 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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
Cc: Atish Patra <Atish.Patra@wdc.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019, Christoph Hellwig wrote:

> This prepares for adding native non-SBI IPI code.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Thanks - dropped the previous version from the v5.4-rc1 queue, and queued 
this one in its place, with Atish's Reviewed-by:.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
