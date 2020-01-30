Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C45CC14DEC7
	for <lists+linux-riscv@lfdr.de>; Thu, 30 Jan 2020 17:16:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:MIME-Version:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nvHjRXEGTkNGn90tmlBbPTSgLpmuQC4sh+W3X4DsXS8=; b=hDZWikG/1diq1PfTH4Q7OnE+fj
	jvqoXs4Mx3HDcmhhnUhETI/7XKgbpTSPrDrYNVhRmmeUnzQU/Ph4BT7XRcj5Hn5z0pEBOks48OEHw
	a55jG2CoTgMg+ZgGQW8r8TYVz0jnKKDbo95oMtEvQ3satJTUu1DBd1GML5DYuLmCKvizvUf344vXr
	zdc6M8DHOcTS2Eb78EWgq/1X+7KRpCMr891BTSotdvs89mIe/HzaMUIXFdSkUlZsbzkyurN/3qysf
	lXPLGeN6aAwzWpc/ej+Vnpdgaspx4DnjhduYDzVIudER5CHQXOVeY/KxQEHpCQexsWTWTqq5WHwy9
	s2FMa2Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixCUv-00077g-Tb; Thu, 30 Jan 2020 16:16:53 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixCUr-00076e-Rk
 for linux-riscv@lists.infradead.org; Thu, 30 Jan 2020 16:16:51 +0000
Received: by mail-pf1-x443.google.com with SMTP id 84so1732376pfy.6
 for <linux-riscv@lists.infradead.org>; Thu, 30 Jan 2020 08:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=nvHjRXEGTkNGn90tmlBbPTSgLpmuQC4sh+W3X4DsXS8=;
 b=lmE0JqPtA0ZSrGZDzun4GQ/LTXUciuEA61NapcHxg9J2Zu4nHGS3oL4pmjM4FuIJ2J
 JvQtXT+r2dpRQK8s4WFheYE+VPHNlGzQlEeadl/TbH270FvfVVAvU6QfqB4812NL4NBY
 HHKx10GogWYnXQoVWyMs7xn/cK10lFPBfBX4ISShASvEOytZ2T4iC0lVCuxq227pZvg3
 m9qMabfd7p+QmcUhrrosdTMF3si5T49FaB0eT8u1x6aeg/Ox8cG+hDTHaZv4j2EOHGGU
 FZBGjt5ZA40L/wo+XotL9p3vbz6oGAxBZ9eu3FpLPNpxrRO9B09Cmo8vjbE6Itfnisk5
 /Zjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=nvHjRXEGTkNGn90tmlBbPTSgLpmuQC4sh+W3X4DsXS8=;
 b=exvgeYCGbVBpGkoD4Sz5kBwRzPMGF1E/o6lLEY30DPcQmQRyA3/gK2t+VmE6mVtgjc
 EWNv9YU1KZECEfIjhhmAcyLQY46to2FJjrfUfRxRC2p4iF51UpA05tXVQhIpxcQZO4At
 VVcOPeE6ot0EX/EsD4mMMR9gGPzQ9FzEqot9DyDZnuQTfCQL2xQ1TJkdfkQqcrrrvs1u
 G1yCEVIVWHT0PODIlrnulLKE5QnAj3BlsCNNYKJEOX/u/VyYqkP+kWsnK6yu1VHqCFkU
 yCaaF6c6KLvdWIG1XramRiyL7Ba7YOsRauhyM/fYeFO1MGibCNNT4AM6qfUkDPBrWamz
 /yEw==
X-Gm-Message-State: APjAAAWwr+tA9+NYkxI4g05Gec1lnS1TK7rcuvp5drx78qKkqdNazimM
 OQpD+LK3zlLsrZaRb8WKOtc9jVR3XyqRldX/RCf4o3kQaYk=
X-Google-Smtp-Source: APXvYqwLS55NAV1y6kpbRrxZYNce/mGXCrapi20Lel2h1dT5gRTNXyBDHQT7f+/u/A2wk6eamOxqX4U7aDvvMCUtfzs=
X-Received: by 2002:a63:6a02:: with SMTP id f2mr5550256pgc.219.1580401007847; 
 Thu, 30 Jan 2020 08:16:47 -0800 (PST)
MIME-Version: 1.0
From: JaeJoon Jung <rgbi3307@gmail.com>
Date: Fri, 31 Jan 2020 01:16:36 +0900
Message-ID: <CAHOvCC4y8x6_fBSAug3ecN+4QFiNJCooUt7Py9=J+NnBd4J8dQ@mail.gmail.com>
Subject: [bug report] GPIO & Hierarchy IRQ support for HiFive Unleashed
To: Yash Shah <yash.shah@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_081649_891851_0CBB4D98 
X-CRM114-Status: UNSURE (   5.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [rgbi3307[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rgbi3307[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Yash Shah,

I am testing the your patch:
[PATCH v4 0/6] GPIO & Hierarchy IRQ support for HiFive Unleashed
from 2019-12-10 11:11 Yash Shah

I found out that you repaired the generic GPIO using bgpio_init(...) API.
bgpio_init() has 9 parameters, and the last is flags.
The flag getting to bgpio_init() is must be BGPIOF_READ_OUTPUT_REG_SET.

Because FU540 GPIOs have different input/output register,
If GPIO direction is input(SIFIVE_GPIO_INPUT_VAL), it must be read
input value(SIFIVE_GPIO_INPUT_EN).
If GPIO direction is output(SIFIVE_GPIO_OUTPUT_VAL), it must be read
output value(SIFIVE_GPIO_OUTPUT_EN).

If The flag is 0, GPIO output value is being reset and the value is
reading 0 always.

diff --git a/drivers/gpio/gpio-sifive.c b/drivers/gpio/gpio-sifive.c
index 23d5e22694d1..1de1af452fcb 100644
--- a/drivers/gpio/gpio-sifive.c
+++ b/drivers/gpio/gpio-sifive.c
@@ -206,7 +206,7 @@ static int sifive_gpio_probe(struct platform_device *pdev)
                         NULL,
                         chip->base + SIFIVE_GPIO_OUTPUT_EN,
                         chip->base + SIFIVE_GPIO_INPUT_EN,
-                        0);
+                        BGPIOF_READ_OUTPUT_REG_SET);
        if (ret) {
                dev_err(dev, "unable to init generic GPIO\n");
                return ret;

Yours,
JaeJoon Jung

