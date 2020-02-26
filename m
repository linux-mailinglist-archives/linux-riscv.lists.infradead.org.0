Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6507D170B18
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 23:03:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tfPVK/HJb/gx9BEeuwjFz9FBW6TX0o9spgT34qrnX58=; b=Qp4XS6ktKjj4t3
	X/1Nfmvv0NSRfG/PBLSmUy8xyyM34o4STUJD1vGQQP1WxfRSX06MiUol2ncIAqQM6hepEh0dzqQS7
	+A5HYKUU2wJ4kUWKwSptM9uHDuk9Ibns+RNmNIX5QmXMtTSGfAmvPhGEX3zLC9mjdzdEJd96iMYCy
	ln3gH2wzV9m2WeyzV6LSc6VRFXaZBOWsydg2Vg5hClXtu0Nr2tKitvTi8qnEojFfERfSjI4332CUd
	47SDuh0EVzT1/KZZ/m8cypR9b9RNtkjAdoTEjktQb1zDkITQIbRbcsShzewvACxsgCJxyvaXZI4Tg
	zeL3IDyPqJyEgn+6catw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74lg-0004SL-IG; Wed, 26 Feb 2020 22:03:00 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74lC-0003ne-DC
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 22:02:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1582754550; x=1614290550;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9Ui27SSBnDNLiTnFJyNqyp0+HmPzoBOlVS3ULCIEs7E=;
 b=gKorD84v3ghBzgQrDmI251hb8TbOTuM5cmdszHYHtswKvauWoqvgRJQK
 pmbBLcmsIUIWRKYksxGFvfj2WWnm90nZBeqptMjxeEIzib1aVMcvsgCKO
 wW8ahdOIL76bBi6Ea08vlUgfWI4VMKDGxS0/jAxK1zOqXveIk8LPwcyJv
 WAiQbJofJV7lmAguPmjUgQFkAOCz6KveyPTgvmN82nxpFAPo4YngdDNeg
 W4H96Ceb/vN1rYf/o3W/CfXIfAlhOjHfeQJD09H5o6DIhUK7Jq8scLN9L
 iC6C5BpkeHz2OS4WcvUSEIvncAnbkGCw2m6RxTqp3dHv3ZaMG86D6lXFa A==;
IronPort-SDR: j3lxuWVUbpCBmLAMOcs/n+NuUsyLNztWItUyizXOkvRbxuY5H1C4Ivs37LNgiucznqVYWs6sg5
 ctaHVo8j8tr0firOQrCcTlrpJfAfzvmz0OWqxIvcX08uD4eWEYfvHOQ+iX/fH5MIZJxR3ACGjo
 HneqfrG2cxmk8pycCnR+LkqBFD/Q2Jt58aSqszH3RiNTKzpRlSH6PBJAnsRlBZj2cS+M4c8IIM
 nmfWAcXQjRth+wNkFERr4EBJ1hOVpApvvKMocRVP+bFktRo/nTT/yjBWxYZSauF87FXN5KF69h
 8wM=
X-IronPort-AV: E=Sophos;i="5.70,489,1574092800"; d="scan'208";a="238981869"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 27 Feb 2020 06:02:25 +0800
IronPort-SDR: zqQRso53DLrqvSUjr8N3VXbjxS9y7VaikWaHzmAiTqSKqIZ8Iw0wx1ZyY/fLuaRFIcxOWslQIk
 9ETz0bintyKHBzlY86MW4vLTAce4ffpiA/IhS8/SRZJIdyv592PLGTy5XAH1t4howWHmbJzO/d
 rdem7QdjTAzu7rcMkiuof2tZJ6kKF6dB7LtzO4EF6C5jbZj8Eorkxn21gt5kYTTinwRbY6JMIB
 D5TgmmWjBlGyeRljOetm913sBLSQ31lq9fLHv00sCeQQouxs1LiiFNqdnBpxDc6h8WL4Gn0Cau
 Oi57vCmSkKzzXgivnMy7BJnc
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 13:54:50 -0800
IronPort-SDR: cwWbOHXlgS187vh61TxRjM6guQ7ekDTpm98OcXyDB2OGhAdfCG+xrfniT9NPggwCnklbxc0dB+
 +exZW2EhASXPMZntYxbsWCex681LyalY5ySfsrJfMH8QKGwx8ZKJjPCsJNzeC4GEuM3PCwqtGR
 3lvXucSrKbzrSKMUsoSNOOVGt1tH0ohUKoTuSp56n5+fS77Zy6NEg2dlcNEdjBTYXJIuX0x/NN
 PAfilQhS/RXAuTURdERtFBjcHBPsZnc15GBqImlUTZ5K1hupUAB6RwniAwb3PI1p/XokGe03el
 ou8=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.80])
 by uls-op-cesaip02.wdc.com with ESMTP; 26 Feb 2020 14:02:25 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v10 09/12] RISC-V: Add SBI HSM extension definitions
Date: Wed, 26 Feb 2020 14:02:10 -0800
Message-Id: <20200226220213.27423-10-atish.patra@wdc.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226220213.27423-1-atish.patra@wdc.com>
References: <20200226220213.27423-1-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_140230_472355_DD803BD8 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Madhavan Srinivasan <maddy@linux.vnet.ibm.com>, Zong Li <zong.li@sifive.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michael Kelley <mikelley@microsoft.com>, Atish Patra <atish.patra@wdc.com>,
 Gary Guo <gary@garyguo.net>, linux-riscv@lists.infradead.org,
 Mike Rapoport <rppt@linux.ibm.com>, Kees Cook <keescook@chromium.org>,
 Marc Zyngier <maz@kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Greentime Hu <greentime.hu@sifive.com>, Borislav Petkov <bp@suse.de>,
 Mao Han <han_mao@c-sky.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Jason Cooper <jason@lakedaemon.net>, Sudeep Holla <sudeep.holla@arm.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Nick Hu <nickhu@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup.patel@wdc.com>, Vincent Chen <vincent.chen@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Anup Patel <anup@brainfault.org>,
 Steven Price <steven.price@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SBI specification defines HSM extension that allows to start/stop a hart
by a supervisor anytime. The specification is available at

https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc

Add those definitions here.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/sbi.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 82ff88f06ddc..450430c15879 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -26,6 +26,7 @@ enum sbi_ext_id {
 	SBI_EXT_TIME = 0x54494D45,
 	SBI_EXT_IPI = 0x735049,
 	SBI_EXT_RFENCE = 0x52464E43,
+	SBI_EXT_HSM = 0x48534D,
 };
 
 enum sbi_ext_base_fid {
@@ -56,6 +57,19 @@ enum sbi_ext_rfence_fid {
 	SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
 };
 
+enum sbi_ext_hsm_fid {
+	SBI_EXT_HSM_HART_START = 0,
+	SBI_EXT_HSM_HART_STOP,
+	SBI_EXT_HSM_HART_STATUS,
+};
+
+enum sbi_hsm_hart_status {
+	SBI_HSM_HART_STATUS_STARTED = 0,
+	SBI_HSM_HART_STATUS_STOPPED,
+	SBI_HSM_HART_STATUS_START_PENDING,
+	SBI_HSM_HART_STATUS_STOP_PENDING,
+};
+
 #define SBI_SPEC_VERSION_DEFAULT	0x1
 #define SBI_SPEC_VERSION_MAJOR_SHIFT	24
 #define SBI_SPEC_VERSION_MAJOR_MASK	0x7f
-- 
2.25.0


