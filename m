Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF4B1279C5
	for <lists+linux-riscv@lfdr.de>; Fri, 20 Dec 2019 12:07:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CuvYmZxLd8M5BiQxeXMEPvKPsn+T62f9uaUdU+HsmZI=; b=pddwNyVveDfZ+lHb//F3Yp4wd
	q3h5TGinhtehNY2TtQwYLb2DwpS+22z0aYla/y2SKCEo4oQ1Pv7bZeBc13wU5GhnYDVWmyeVmpLHl
	FyHD0WI7zd8svRqv1GM812nGdFNi6FZ9WTNoSGJtMKZe6qeQVGU3Hk9K2D5LHnj2tn0rrWlfuO5hI
	ClPXmoccgkc4vUWM6EkeWgpDk6kRcJtWT1Hqh9HOmPRIPMrF89hVoIq/+E+OVB/04ahyQAm4SzsrQ
	zElvWY6U1UMZfDLnHhPokZ5Copmerboqd/zEFaRGJ+D/GmARN44R2yI2GyOO4y6o2seWk1eoJjIZR
	2cFPw2oHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiG80-0007I7-Pd; Fri, 20 Dec 2019 11:07:28 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiG7j-0007FD-8z
 for linux-riscv@lists.infradead.org; Fri, 20 Dec 2019 11:07:12 +0000
Received: by mail-il1-x143.google.com with SMTP id z12so7591268iln.11
 for <linux-riscv@lists.infradead.org>; Fri, 20 Dec 2019 03:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=CuvYmZxLd8M5BiQxeXMEPvKPsn+T62f9uaUdU+HsmZI=;
 b=FwfDOzr2MfGAiaCWXP4Vk9K87UmjUQo6aakivfZOVFPohjKd5SrzNfxYDQ8tvd9eBC
 +YanTBNiGCq353VWzjbaueAE1tkeJjXv0T/suPEhNc8cgeqkauiTLFXGilXy9FMoBoG6
 HvGb3ovru3NdYW1DqwJ6bJkUDYkVBDWlYROV2ALtuirb8h9eLcuWGQwrjX7/i6NzHbqR
 N7JXX4ucOsr7H5352iJQ58Im9WfybP1VlQatLQWNRe//JgEHcx/i/GV1Bwj5Up1INqrH
 GRGO8EOQ/CdEjaGlrlkdpv6AGkh/Jhp3jwErieygv8Ncr6AhVuEd+YG7NIC+/KBHmxAx
 qMog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=CuvYmZxLd8M5BiQxeXMEPvKPsn+T62f9uaUdU+HsmZI=;
 b=uQRSPStTErIX3AS11j9Shk/afOyNX3nxWzikrjnbzfrLPvHK5SI68l67pqSdbA6Tgr
 ohl3BCm0UZvEUca7tMm5P8xOwHfZnbR0Okk9OTNSksFxeHQtlufSoxTjRu701TISyuFi
 reOte5qT+oEfdXlJzL56T546iW3bvVUHGLROE42Fndn8qJNoYlY+Ii1PmpsAXca66xUH
 yflhxvrTAH44FPBmGhXEODFxDq2pgGsC6cyyCRvreVrrgsrbw433gWhx72KwWLIkeUo+
 QV49k7cJPzow+gag45v4+Bd+zMERICeV6TG99UQMIpXug9r4p4qWS9epO5aychThAuNp
 72/A==
X-Gm-Message-State: APjAAAXfmMRrNz4HigKHYOvOS/KOU7/HOr1rXou0oG9b1q8Tohzv5+DC
 H0+niABwz4wrFU6oP5Eot9i9+A==
X-Google-Smtp-Source: APXvYqwpMTaRtzctXAmhjDIK368kqdrepo6dFIR1hQ9bfncZwyvO5j/1INF5YTU3nfNI5+PJkTY+Sg==
X-Received: by 2002:a92:9e99:: with SMTP id s25mr11698837ilk.80.1576840030346; 
 Fri, 20 Dec 2019 03:07:10 -0800 (PST)
Received: from localhost (67-0-26-4.albq.qwest.net. [67.0.26.4])
 by smtp.gmail.com with ESMTPSA id g6sm4416389ilj.64.2019.12.20.03.07.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 03:07:09 -0800 (PST)
Date: Fri, 20 Dec 2019 03:07:08 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Greentime Hu <greentime.hu@sifive.com>
Subject: Re: [PATCH] riscv: fix scratch register clearing in M-mode.
In-Reply-To: <20191219064459.20790-1-greentime.hu@sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1912200306570.3767@viisi.sifive.com>
References: <20191219064459.20790-1-greentime.hu@sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_030711_319290_10D6B99C 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, palmer@dabbelt.com, green.hu@gmail.com,
 greentime@kernel.org, linux-riscv@lists.infradead.org, hch@lst.de
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 19 Dec 2019, Greentime Hu wrote:

> This patch fixes that the sscratch register clearing in M-mode. It cleared
> sscratch register in M-mode, but it should clear mscratch register. That will
> cause kernel trap if the CPU core doesn't support S-mode when trying to access
> sscratch.
> 
> Fixes: 9e80635619b5 ("riscv: clear the instruction cache and all registers when booting")
> Signed-off-by: Greentime Hu <greentime.hu@sifive.com>

Thanks Greentime, queued for v5.5-rc.

- Paul

