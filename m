Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CA6CC1F7
	for <lists+linux-riscv@lfdr.de>; Fri,  4 Oct 2019 19:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z2rkU6F3Mi73Ubx81Uz4YYdX4RUHIlklBiU/F1qNA44=; b=TyB5PV9y+k2L7q
	ETZnMLE/JmyDrGUxbJBoCcbqvCnmREc+oFT2opXykZtFnixsJnPqejUpGP8jdViY+MrESM1nDgSSE
	9KCLxzxPkXUWdqcwyaqMWHepUTsAgZuUXm/hq1+a0bZg6yY08mp++uNuwD9G3d+Hiizb0rmH2P2ks
	Q2xqG0llzFC231mUok+wZL5+s/5Dujp3QHdUKMckeEIp4aFeNxgkmKhy9bAeqgUgOCjKmARGqwEfa
	uxN4/4HZG/9iyRRe3dAsTkenN42UqMgYha/JsD0ujGsftB4oz3blMZyNkdK/rSCx4sOufCLbriD3q
	ati3S8eUdYEE4lVX/mQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGRgh-0003Ox-3x; Fri, 04 Oct 2019 17:48:19 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGRgd-0003O9-7o
 for linux-riscv@lists.infradead.org; Fri, 04 Oct 2019 17:48:16 +0000
Received: by mail-io1-xd44.google.com with SMTP id c25so15280539iot.12
 for <linux-riscv@lists.infradead.org>; Fri, 04 Oct 2019 10:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=pM1YTjlwiPrYotTby5FDrTXDJRG8vk7+BJxpR78IozE=;
 b=jG39lY79bmqDKqtOM3vYnCrbvO+bBiSXGugKL5lgb5PCAjAFW0nfGLP0MAP9eaCIVe
 19Scayt9vYGxuqUGnSw4ABvrlLJTd9eTjSx9w/CWpskDoArl/FaUFuPaAXtN0rDJRSeo
 Lu7jHadAPgYa4jI1iA4RRK/sT4VeQ/wpWtr5o4cvcKdgCG5ZrSL5u5p9Diyrtg80jCwo
 84XH9ruSKo/Yuty7HnV53+sogdsvEUZmGW4Ka7ff8ouDcAgtthgeZJb/TN6G+re6k3kX
 5n8rwwExX5VOOvJWgAh7NRhS4FCbINDp6s++z2xZuSBa7QYD94AVjsIS3KrDvYbLu4ga
 KJag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=pM1YTjlwiPrYotTby5FDrTXDJRG8vk7+BJxpR78IozE=;
 b=J9tKF1F2JcONpKTHnl6tCECMon9U6Mby9fWBl0p7v8Z/+H/Ca9Jxk4joF1VQKbHeAH
 5GcdFq+u04AaycXcy3PgoLbNjn39rT3a3DTi0S3s/Nv7DAOLSXIzzFxK9+ZbZ+kmNlmO
 5BvhJrpm9rNjoPez235tHQt7Kw3/ZW995NpzRVB3rERdgtw/XGkTNiECq6yuRJfYASzA
 PJhloFKkpx4Lb2aR+t5C6MbiCPmVOs/8zy5aTSQYFBvorEIVxFpoIIU9JOzj0JFJ1XAA
 6EsKiFAfl58E3vyJDvqfpfr1OhfMUl+rgkfg5dyeWun9tTRbq6vmpj9/hB2PtzfbS5qk
 5Gww==
X-Gm-Message-State: APjAAAVYw3L7x5WZnUNDTLVGPMPhHMhSP4EcA5r1Dox4J/K9GPSc7SDY
 1g2kwSm0SRTV3ED/MLrZXLgAEaThmBg=
X-Google-Smtp-Source: APXvYqz0O0ajY2hstRrpT2cQQoo/4Ud4bFBYaXsREbXER1wzT3F6U7DSZrhxOWA1XuAlok/1ZV6cjA==
X-Received: by 2002:a92:8583:: with SMTP id f125mr17735949ilh.39.1570211293973; 
 Fri, 04 Oct 2019 10:48:13 -0700 (PDT)
Received: from localhost (67-0-10-3.albq.qwest.net. [67.0.10.3])
 by smtp.gmail.com with ESMTPSA id z16sm2299283iol.64.2019.10.04.10.48.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 10:48:13 -0700 (PDT)
Date: Fri, 4 Oct 2019 10:48:12 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org
Subject: kbuild change breaks HiFive-U boot here
Message-ID: <alpine.DEB.2.21.9999.1910041037590.15827@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_104815_289712_4EFE07BA 
X-CRM114-Status: UNSURE (   4.39  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: yamada.masahiro@socionext.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Commit 858805b336be1cabb3d9033adaa3676574d12e37 ("kbuild: add $(BASH) to 
run scripts with bash-extension") breaks my kernel test flow that targets 
the HiFive Unleashed board.  The boot traps during BBL early boot and 
stops.  QEMU is unaffected.  Reverting 858805b336be fixes the issue.

I haven't yet had the opportunity to root-cause the issue.  The issue may 
be related to idiosyncracies in my local boot testing process, rather 
than this commit.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
