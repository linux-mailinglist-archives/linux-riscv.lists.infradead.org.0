Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 489963229A
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Jun 2019 10:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=os7b5c6j9xKAlHQROKYqFGmebmUEnoHz/S9py+pVKK4=; b=EyezVdnesK9DY9
	8jr35LyMOK5YdPIBCx63YA5/Elj3hXiIgtUddpakO2JctHaBCUqLRjWS4Ii6YRudxrIjMM3JqBJ8U
	mxafdZxlq/CE1dHdZ54qW10yFnDlCCwNeOB/mYFiyyL2MPljpwmb4rp4IOf49gtHqASGxJXsbiaxj
	OwvvgfTkSARYiZ0CPpfHXYUxpBMHN22v+AAHa0pADxFzbPCPD4G9h770azWk9IELKEcPuEnO92Q94
	aNL30P2Z4/yLj64XFXW78BIIXStH1wfLD3EaKb1TcZGH/zdHxN9fjvsjYH2ZWdS6ZKiJYKGK4YY1P
	1SJrfNg6WWr5hd/OIkFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXLSF-0003dL-OU; Sun, 02 Jun 2019 08:02:59 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXLSC-0003cN-8a
 for linux-riscv@lists.infradead.org; Sun, 02 Jun 2019 08:02:57 +0000
Received: by mail-wr1-x430.google.com with SMTP id o12so2062720wrj.9
 for <linux-riscv@lists.infradead.org>; Sun, 02 Jun 2019 01:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RfBHDW1JUK0JUXgOE+kdqfunwUHLMQw5E4XKM+X0x50=;
 b=anm+Dr7sIKonBpe62/0B12Hbb8SytUNvaQi/qKE4/DtNerrc86fjvfm3qA3DrqI1/2
 nADTEVxINGsUqeA7zov9yzo7BIS69lUUR5pjJXYBdgLHMXN1su0nZTrPWh8Y+ynC11rS
 b62lzuAGjDoi7Wnlt7PObkutIyEd0hihxHmI3xN4CXdKcjhQEl1z52ZPf6e7m0ix/uK7
 6FVnqc3QOqtxgK5Oklh6eVIh2vDKGRG5W4RNNYOYAFWLcHgtWEUe7caWmKXZ7HIVB4kd
 2/MFJ15yGNEuM0hHgAVOta7MQwrcUmvIpfb7CJZJ2cMVcpi/AvB305rE3vBhADS3XizE
 Frtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RfBHDW1JUK0JUXgOE+kdqfunwUHLMQw5E4XKM+X0x50=;
 b=Y3uP6cj0K8Ddm5744JHElkc4buAvIbLnlQDk28EJt8qGEbsW6p7CzRej4s/swWuAGc
 8BJ0kGtpQ5cSXSgIjvulcpsVfC4c+kriUXqMtP+sHlnZQxXy64Um6PQIXRa5uS1JFDMb
 y1yEllCqu+8QOOyIfjHjlZ3EAuMpmSkovc8zRiaLgKiC7fqDqUZC8m4oNVOdS9byd4r7
 390TZtYmwQIuQC3X4LvBxlkt3CePpb6QpjEGlTgPlqg07kqzJNeQJjG62eFpOyx4aZPD
 GEmujDpST6OhdnBnAeokUqXJJk885CbWs9MnoOTIcoGsQ7iZdcqs8njTch78RwnKA094
 DPWQ==
X-Gm-Message-State: APjAAAWqv92yLlEFqQuNXeEw43becG6tK5bZvD6/Iq02JSxdBpukzJB0
 YJNIw+el1+6H1fcbO7EZX4Vw5iRjyqU=
X-Google-Smtp-Source: APXvYqwvKWpEiy6n61BWYhZgheURdahrS+5bR/ew2E6eykrb/JdIR0hY5dqoyN41RN+tfAQQ5WJGtg==
X-Received: by 2002:a5d:6849:: with SMTP id o9mr12258612wrw.196.1559462574661; 
 Sun, 02 Jun 2019 01:02:54 -0700 (PDT)
Received: from viisi.fritz.box (217-76-161-89.static.highway.a1.net.
 [217.76.161.89])
 by smtp.gmail.com with ESMTPSA id t6sm22208264wmt.34.2019.06.02.01.02.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 02 Jun 2019 01:02:54 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH 0/5] arch: riscv: add board and SoC DT file support
Date: Sun,  2 Jun 2019 01:02:46 -0700
Message-Id: <20190602080251.31372-1-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_010256_314541_1A8A559E 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
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
