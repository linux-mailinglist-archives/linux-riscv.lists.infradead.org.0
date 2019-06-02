Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7913732288
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Jun 2019 10:01:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=os7b5c6j9xKAlHQROKYqFGmebmUEnoHz/S9py+pVKK4=; b=SfM6Nuufk7j/Yu
	FqLw5lSk3iLTRttS9RT7iLPeE5OW+lbwtznFHz+vfrY//2erKe7xMpxtNhcFuMRuAHAMj1158hcUE
	y+PeGy29cBnjqw9lzGrh3Nk95w146Zj6UrYGQx9tuekhALO73+keVuhm47NRXtS+nrO8B8w/sdA6k
	+43FOVCh/RCNm8k/Y2aoRHQana/WVfGkAyKfFk3xSyBdIK0vWWJN0WbKV/YBg2GREUi69iwm+3Bfp
	SP3L8GgH9zxvPTmQ30xVhM0D8c28cFhZafaR6INSfFIhFwJhmI4zuZMxT2aVMg1h/coMABG1Vk8cN
	tQQL8hWMQM1j3A8K5mDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXLQw-0003Gi-8X; Sun, 02 Jun 2019 08:01:38 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXLQq-0003Ez-JP
 for linux-riscv@lists.infradead.org; Sun, 02 Jun 2019 08:01:34 +0000
Received: by mail-wr1-x42f.google.com with SMTP id e16so937347wrn.1
 for <linux-riscv@lists.infradead.org>; Sun, 02 Jun 2019 01:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RfBHDW1JUK0JUXgOE+kdqfunwUHLMQw5E4XKM+X0x50=;
 b=l/wS69wO7+JGulgv7R7uwVWZrGXChIvsaJ0xbAh1jcinXcWKcGIWR7WmHn47lSct2c
 70kwqdnNpur/vdKlIIQ5l/9BAN5rGeNathO/I9E7KI3XI69O37f5BnjwujxZFMpMAJYc
 ue8ka4LVk1TbHwslGqsK6G7GVabBSqs2Y5QggOpgNhFwT7UzqMI0xNwEkLgVdv67Xi8t
 mNpU4V+NemkSWrGYOD06JQzE/tSP//8NLPAMoV3M+f+ik/k9p6KkvVUG85w0DBBViCLF
 8YPUm+xnpgS93h7AcR2jcVTMvnkzQAheJKivywwwWBSxb1MuSRLCdEdnJZTBIgLnLTd3
 AhoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RfBHDW1JUK0JUXgOE+kdqfunwUHLMQw5E4XKM+X0x50=;
 b=MKt84od92xYBk7Sj8N08SndnwWKjbx84Y22HIsQMNYJVNE7Uw9EF2f0Wg0iaxYDkzb
 4yWs5bs4M8FA/G0RMFt7ew+c7kCnj0pOvdI6OykxbHwVaexXIosU0yEZYyf8/pw01+4a
 XC/BP+dKfiIsN/OgONf0ZHNwZNlgUdt+ajd2ixMXnC3hna6ydkzipsSmq18mY50i9XYg
 TvS7VyW4ApGQQk1EHIAHJBu8xHJsFynuNIHPbGxT+jTgceFEledCnX3ewsMqQaRSiymk
 hVK2V+6GR901xHmGoMdA568ld9CTUuCY1P35vCNtDoeNEo5o0Rj+o6hZ0Mq2G3tlcCxE
 icXw==
X-Gm-Message-State: APjAAAWuH40ICa+VCG9yWOLrpLBU/UFtEzYJH2rDJtoxR0aWtDbYDZwa
 2XkXhVDx5FyQTVTTNEq4MOKU4A==
X-Google-Smtp-Source: APXvYqwEQoTKjdiOdfBdzg7SazDrpuqVIUbCRp6UgtcqnjyeqGvlyRioj7jnX1RBuCz+jZgboRRu9g==
X-Received: by 2002:adf:de8b:: with SMTP id w11mr12297005wrl.134.1559462490338; 
 Sun, 02 Jun 2019 01:01:30 -0700 (PDT)
Received: from viisi.fritz.box (217-76-161-89.static.highway.a1.net.
 [217.76.161.89])
 by smtp.gmail.com with ESMTPSA id y133sm4868583wmg.5.2019.06.02.01.01.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 02 Jun 2019 01:01:29 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH 0/5] arch: riscv: add board and SoC DT file support
Date: Sun,  2 Jun 2019 01:01:21 -0700
Message-Id: <20190602080126.31075-1-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_010132_762864_8829EE4F 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add support for building flattened DT files from DT source files under
arch/riscv/boot/dts.  Follow existing kernel precedent from other SoC
architectures.  Start our board support by adding initial support for
the SiFive FU540 SoC and the first development board that uses it, the
SiFive HiFive Unleashed A00.

This third version of the patch set adds I2C data for the chip,
incorporates all remaining changes that riscv-pk was making
automatically, and addresses a comment from Rob Herring
<robh@kernel.org>.

Boot-tested on v5.2-rc1 on a HiFive Unleashed A00 board, using the
BBL and open-source FSBL, with modifications to pass in the DTB
file generated by these patches.

This patch series can be found, along with the PRCI patch set
and the DT macro prerequisite patch, at:

https://github.com/sifive/riscv-linux/tree/dev/paulw/dts-v5.2-rc1


- Paul


Paul Walmsley (5):
  arch: riscv: add support for building DTB files from DT source data
  dt-bindings: riscv: sifive: add YAML documentation for the SiFive
    FU540
  dt-bindings: riscv: convert cpu binding to json-schema
  riscv: dts: add initial support for the SiFive FU540-C000 SoC
  riscv: dts: add initial board data for the SiFive HiFive Unleashed

 .../devicetree/bindings/riscv/cpus.yaml       | 168 ++++++++++++++
 .../devicetree/bindings/riscv/sifive.yaml     |  25 ++
 MAINTAINERS                                   |   9 +
 arch/riscv/boot/dts/Makefile                  |   2 +
 arch/riscv/boot/dts/sifive/Makefile           |   2 +
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi    | 215 ++++++++++++++++++
 .../boot/dts/sifive/hifive-unleashed-a00.dts  |  67 ++++++
 7 files changed, 488 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/cpus.yaml
 create mode 100644 Documentation/devicetree/bindings/riscv/sifive.yaml
 create mode 100644 arch/riscv/boot/dts/Makefile
 create mode 100644 arch/riscv/boot/dts/sifive/Makefile
 create mode 100644 arch/riscv/boot/dts/sifive/fu540-c000.dtsi
 create mode 100644 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts

-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
